class Gallery::Gallery < ActiveRecord::Base

  cms_is_categorized if defined?(ComfortableMexicanSofa)

  self.table_name = :gallery_galleries

  # -- Relationships --------------------------------------------------------
  has_many :photos, :dependent => :destroy

  # -- Validations ----------------------------------------------------------
  validates :title,
    :presence => true
  attr_accessible :title, :identifier, :description, :full_width, :full_height, :force_ratio_full, 
                  :thumb_width, :thumb_height, :force_ratio_thumb, :short_description, :category_ids

  validates :identifier,
    :presence   => true,
    :uniqueness => true,
    :format     => { :with =>  /^\w[a-z0-9_-]*$/i }

  # -- Callbacks ------------------------------------------------------------
  before_create :assign_position

  # -- Scopes ---------------------------------------------------------------
  default_scope order('gallery_galleries.position')

  # -- Instance Methods -----------------------------------------------------
  def next (category)
    Gallery::Gallery.unscoped.order("ends_on ASC").for_category(category).where("ends_on > ?", ends_on).first
  end

  def previous (category)
    Gallery::Gallery.unscoped.order("ends_on DESC").for_category(category).where("ends_on < ?", ends_on).first
  end

private

  def assign_position
    max = Gallery::Gallery.maximum(:position).to_i
    self.position = max ? max + 1 : 0
  end

end