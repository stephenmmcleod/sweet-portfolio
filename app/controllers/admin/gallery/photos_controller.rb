class Admin::Gallery::PhotosController < Admin::Gallery::BaseController

  before_filter :load_gallery
  before_filter :load_photo,  :only => [:edit, :update, :destroy, :crop]
  before_filter :build_photo, :only => [:new, :create]

  def index
    @photos = @gallery.photos
  end

  def new
    render
  end

  def create
    
    file_array  = params[:gallery_photo][:image] || [nil]

    file_array.each_with_index do |file, i|
      file_params = params[:gallery_photo].merge(:image => file)

      title = (file_params[:title].blank? && file_params[:image] ?
        file_params[:image].original_filename :
        file_params[:title]
      )
      title = title + " #{i + 1}" if file_params[:title] == title && file_array.size > 1
      params = {:gallery => @gallery}.merge(file_params.merge(:title => title) || {})
      @photo = Gallery::Photo.new(params)
      @photo.save!
    end

    flash[:success] = 'Photo created'
    redirect_to :action => :index
  rescue ActiveRecord::RecordInvalid
    flash[:error] = 'Failed to create Photo'
    render :action => :new
  end

  def edit
    render
  end

  def update
    photo = params[:photo] || params[:gallery_photo]
    @photo.update_attributes!(photo_params)
    if photo[:thumb_crop_x].present? || photo[:full_crop_x].present?
      @photo.image.reprocess!
      flash[:success] = 'Photo cropped'
    else  
      flash[:success] = 'Photo updated'  
    end
    redirect_to :action => :edit  
  rescue ActiveRecord::RecordInvalid
    flash.now[:error] = 'Failed to update Photo'
    render :action => :edit
  end

  def destroy
    @photo.destroy
    flash[:success] = 'Photo deleted'
    redirect_to :action => :index
  end

  def reorder
    (params[:gallery_photo] || []).each_with_index do |id, index|
      if (photo = Gallery::Photo.find_by_id(id))
        photo.update_attribute(:position, index)
      end
    end
    render :nothing => true
  end

  def crop
    render
  end

protected

  def load_gallery
    @gallery = Gallery::Gallery.find(params[:gallery_id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = 'Gallery not found'
    redirect_to admin_gallery_galleries_path
  end

  def load_photo
    @photo = @gallery.photos.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = 'Photo not found'
    redirect_to :action => :index
  end

  def build_photo
    @photo = Gallery::Photo.new(params[:sofa_gallery_photo] || {})
  end

  def photo_params
    params.require(:gallery_photo).permit(:gallery, :title, :description, :image, :embed_code,
      :thumb_crop_x, :thumb_crop_y, :thumb_crop_w, :thumb_crop_h,
      :full_crop_x, :full_crop_y, :full_crop_w, :full_crop_h)
  end



end
