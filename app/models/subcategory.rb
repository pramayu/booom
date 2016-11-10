class Subcategory < ApplicationRecord

  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug

  #categories
  has_many :categorydetails, dependent: :destroy
  has_many :categories, through: :categorydetails

  #themes
  has_many :datasubcategories
  has_many :themes, through: :datasubcategories

  # code
  has_many :codes, through: :datasubcategories

  # code
  has_many :codesubs

  # modelsub
  has_many :modelsubs


  has_many :vidsubs

  # graphic
  has_many :graphics, through: :datasubcategories
  has_many :t3ds, through: :datasubcategories
  has_many :videofxes, through: :datasubcategories
  has_many :courses, through: :datasubcategories

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.parameterize
  end

end
