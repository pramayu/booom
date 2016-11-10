class Category < ApplicationRecord

  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug

  has_many :categorydetails
  has_many :subcategories, through: :categorydetails
  has_many :themes
  has_many :dependencies
  has_many :codes
  has_many :graphics
  has_many :t3ds
  has_many :videofxes
  has_many :fonts
  has_many :courses
  has_many :vacancies

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.parameterize
  end
end
