class Admin::Gallery::GalleriesController < Admin::Gallery::BaseController

  before_filter :load_gallery,  :except => [:index, :new, :create, :reorder]
  before_filter :build_gallery, :only   => [:new, :create]

  def index
    if params[:category].present?
      @galleries = Gallery::Gallery.for_category(params[:category]).all
    else
      @galleries = Gallery::Gallery.all
    end
  end

  def new
    render
  end

  def create
    @gallery.save!
    flash[:success] = 'Gallery created'
    redirect_to :action => :index
  rescue ActiveRecord::RecordInvalid
    flash.now[:error] = 'Failed to create Gallery'
    render :action => :new
  end

  def show
    render
  end

  def edit
    render
  end

  def update
    @gallery.update_attributes!(gallery_params)
    flash[:success] = 'Gallery updated'
    redirect_to :action => :index
  rescue ActiveRecord::RecordInvalid
    flash.now[:error] = 'Failed to update Gallery'
    render :action => :edit
  end

  def destroy
    @gallery.destroy
    flash[:success] = 'Gallery deleted'
    redirect_to :action => :index
  end

  def reorder
    (params[:gallery_gallery] || []).each_with_index do |id, index|
      if (gallery = Gallery::Gallery.find_by_id(id))
        gallery.update_attribute(:position, index)
      end
    end
    render :nothing => true
  end

protected

  def load_gallery
    @gallery = Gallery::Gallery.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = 'Gallery not found'
    redirect_to :action => :index
  end

  def build_gallery
    @gallery = Gallery::Gallery.new(params[:gallery])
  end

  def gallery_params
    params.require(:gallery).permit(:title, :identifier, :description, :short_description, 
        :starts_on, :ends_on, :opening, :event_link, :full_width, :full_height, :force_ratio_full, 
        :thumb_width, :thumb_height, :force_ratio_thumb, :category_ids, :is_published)
  end

end
