class Gallery::Gallery < ActiveRecord::Base

  cms_is_categorized if defined?(ComfortableMexicanSofa)

  self.table_name = :gallery_galleries

  # -- Relationships --------------------------------------------------------
  has_many :photos, :dependent => :destroy

  # -- Validations ----------------------------------------------------------
  validates :title,
    :presence => true
  
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
    Gallery::Gallery.unscoped.order("position ASC").for_category(category).where("position > ?", position).first
  end

  def previous (category)
    Gallery::Gallery.unscoped.order("position DESC").for_category(category).where("position < ?", position).first
  end

private

  def assign_position
    max = Gallery::Gallery.maximum(:position).to_i
    self.position = max ? max + 1 : 0
  end

end