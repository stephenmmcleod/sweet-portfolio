class Gallery::Gallery < ActiveRecord::Base

  cms_is_categorized if defined?(ComfortableMexicanSofa)

  self.table_name = :gallery_galleries

  # -- Relationships --------------------------------------------------------
  has_many :photos, :dependent => :destroy

  # -- Validations ----------------------------------------------------------
  validates :title,
    :presence => true
  attr_accessible :title, :identifier, :description, :full_width, :full_height, :force_ratio_full, :thumb_width, :thumb_height, :force_ratio_thumb, :short_description, :category_ids

  # -- Callbacks ------------------------------------------------------------
  before_create :assign_position


  validates :identifier,
    :presence   => true,
    :uniqueness => true,
    :format     => { :with =>  /^\w[a-z0-9_-]*$/i }

  # -- Scopes ---------------------------------------------------------------
  default_scope order('gallery_galleries.position')

private

  def assign_position
    max = Gallery::Gallery.maximum(:position)
    self.position = max ? max + 1 : 0
  end

end