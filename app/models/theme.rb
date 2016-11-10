class Theme < ApplicationRecord
  belongs_to :category

  def self.search(params)
    if params[:search].present? && params[:min].present? && params[:max].present?
      where("(LOWER(name) LIKE ? OR description LIKE ?) AND cast (price as int) BETWEEN ? AND ?", "%#{params[:search]}%", "%#{params[:search]}%", "#{params[:min].to_i}", "#{params[:max].to_i}")
    elsif params[:search].present? && params[:min].present?
      where("(LOWER(name) LIKE ? OR description LIKE ?) AND cast(price as int) >= ?", "%#{params[:search]}%", "%#{params[:search]}%", "#{params[:min].to_i}")
    elsif params[:search].present? && params[:max].present?
      where("(LOWER(name) LIKE ? OR description LIKE ?) AND cast(price as int) <= ?", "%#{params[:search]}%", "%#{params[:search]}%", "#{params[:max].to_i}")
    elsif params[:min].present? && params[:max].present?
      where("cast (price as int) BETWEEN ? AND ?", "#{params[:min].to_i}", "#{params[:max].to_i}")
    elsif params[:search].present?
      where("LOWER(name) LIKE ? OR LOWER(description) LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    elsif params[:min].present?
      where("cast (price as int) >= ?", "#{params[:min].to_i}")
    elsif params[:max].present?
      where("cast (price as int) <= ?", "#{params[:max].to_i}")
    elsif params[:fixed].present?
      where("LOWER(layout) = ?", "#{params[:fixed]}")
    elsif params[:liquid].present?
      where("LOWER(layout) = ?", "#{params[:liquid]}")
    elsif params[:responsive].present?
      where("LOWER(layout) = ?", "#{params[:responsive]}")
    elsif params[:fixed].present? && params[:min].present?
      where("LOWER(layout) = ? AND cast (price as int) >= ?", "#{params[:fixed]}", "#{params[:min].to_i}")
    elsif params[:liquid].present? && params[:min].present?
      where("LOWER(layout) = ? AND cast (price as int) >= ?", "#{params[:liquid]}", "#{params[:min].to_i}")
    elsif params[:responsive].present? && params[:min].present?
      where("LOWER(layout) = ? AND cast (price as int) >= ?", "#{params[:responsive]}", "#{params[:min].to_i}")
    elsif params[:fixed].present? && params[:max].present?
      where("LOWER(layout) = ? AND cast (price as int) <= ?", "#{params[:fixed]}", "#{params[:max].to_i}")
    elsif params[:liquid].present? && params[:max].present?
      where("LOWER(layout) = ? AND cast (price as int) <= ?", "#{params[:liquid]}", "#{params[:max].to_i}")
    elsif params[:responsive].present? && params[:max].present?
      where("LOWER(layout) = ? AND cast (price as int) <= ?", "#{params[:responsive]}", "#{params[:max].to_i}")
    else
      all
    end
  end

  def self.theme_search(term)
    where('LOWER(name) LIKE :term OR LOWER(description) LIKE :term', term: "%#{term.downcase}%")
  end

  # browsers
  has_many :databrowsers, dependent: :destroy
  has_many :browsers, through: :databrowsers

  # file includes
  has_many :dataincludes, dependent: :destroy
  has_many :includes, through: :dataincludes

  #subcategories
  has_many :datasubcategories, dependent: :destroy
  has_many :subcategories, through: :datasubcategories

  # compatibles
  has_many :datacompatibles, dependent: :destroy
  has_many :compatibles, through: :datacompatibles

  #dependency
  belongs_to :dependency

  # tag
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  def self.tagged_with(name)
    Tag.find_by_name!(name).themes		
  end

  def self.tag_counts
    Tag.select("tags.*, count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |t|
      Tag.where(name: t.strip).first_or_create!
    end
  end

  # screenshot
  has_many :screenshots, dependent: :destroy
  accepts_nested_attributes_for :screenshots

  # thumbnail
  mount_uploader :thumbnail, ThumbnailUploader

  # main file
  has_many :brokes, dependent: :destroy
  accepts_nested_attributes_for :brokes

  # user
  belongs_to :user

  belongs_to :team

  # comments
  has_many :comments, dependent: :destroy

  # slug
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug
  # after_save :update_slug



  acts_as_votable

  # has_many :datacolls
  # has_many :collections, through: :datacolls

  # notification
  has_many :notifications, dependent: :destroy
  has_many :freeitems, dependent: :destroy

  # has_many :wishlists, dependent: :destroy

  has_many :diasukas, dependent: :destroy
  has_many :akusukas, through: :diasukas

  has_one :revrest, dependent: :destroy
  accepts_nested_attributes_for :revrest

  has_many :reviews, dependent: :destroy

  def to_param
    slug
  end

  has_many :line_items, dependent: :destroy
  has_many :carts, through: :line_items

  def generate_slug
    self.slug ||= name.parameterize
  end

end
