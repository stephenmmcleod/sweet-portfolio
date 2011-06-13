class Sofa::Gallery < ActiveRecord::Base
  
  set_table_name :sofa_galleries
  
  # -- Relationships --------------------------------------------------------
  has_many :photos, :dependent => :destroy
  
  # -- Validations ----------------------------------------------------------
  validates :title,
    :presence => true
    
  validates :slug,
    :presence   => true,
    :uniqueness => true,
    :format     => { :with =>  /^\w[a-z0-9_-]*$/i }
    
end