class Graphic < ApplicationRecord
  # category
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
    else
      all
    end
  end

  # softopen
  belongs_to :softopen

  # user
  belongs_to :user

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.parameterize
  end

  def self.graphic_search(term)
    where('LOWER(name) LIKE :term OR LOWER(description) LIKE :term', term: "%#{term.downcase}%")
  end

  # file includes
  has_many :dataincludes, dependent: :destroy
  has_many :includes, through: :dataincludes

  #subcategories
  has_many :datasubcategories, dependent: :destroy
  has_many :subcategories, through: :datasubcategories

  # tag
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  has_many :freeitems, dependent: :destroy

  def self.tagged_with(name)
    Tag.find_by_name!(name).graphics		
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

  # slug
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug

  acts_as_votable

  has_many :diasukas, dependent: :destroy
  has_many :akusukas, through: :diasukas

  has_many :graphindustries, dependent: :destroy
  has_many :industries, through: :graphindustries

  has_many :comments, dependent: :destroy
  # notifications
  has_many :notifications, dependent: :destroy

  # has_many :wishlists, dependent: :destroy
  belongs_to :team
  has_one :revrest, dependent: :destroy
  accepts_nested_attributes_for :revrest

  has_many :reviews, dependent: :destroy
  has_many :line_items, dependent: :destroy

end
