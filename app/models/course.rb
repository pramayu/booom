class Course < ApplicationRecord



  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug
  # after_save :update_slug

  # user
  belongs_to :user
  has_many :freeitems, dependent: :destroy


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

    elsif params[:beginner].present?
      where("LOWER(skill_level) = ?", "#{params[:beginner]}")

    elsif params[:intermediate].present?
      where("LOWER(skill_level) = ?", "#{params[:intermediate]}")

    elsif params[:expert].present?
      where("LOWER(skill_level) = ?", "#{params[:expert]}")
    else
      all
    end
  end
  
  def self.course_search(term)
    where('LOWER(name) LIKE :term OR LOWER(description) LIKE :term', term: "%#{term.downcase}%")
  end


  # freepi
  has_many :freepis, dependent: :destroy
  accepts_nested_attributes_for :freepis

  has_many :datasubcategories, dependent: :destroy
  has_many :subcategories, through: :datasubcategories

  # tag
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  # language
  belongs_to :language

  def self.tagged_with(name)
    Tag.find_by_name!(name).courses		
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

  mount_uploader :thumbnail, ThumbnailUploader

  has_many :cofiles, dependent: :destroy
  accepts_nested_attributes_for :cofiles

  acts_as_votable

  # headsec
  has_many :headsecs, dependent: :destroy

  has_many :comments, dependent: :destroy
  # notifications
  has_many :notifications, dependent: :destroy

  has_many :diasukas, dependent: :destroy
  has_many :akusukas, through: :diasukas

  # has_many :wishlists, dependent: :destroy
  belongs_to :team
  has_one :revrest, dependent: :destroy
  accepts_nested_attributes_for :revrest

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.parameterize
  end

  has_many :reviews, dependent: :destroy
  has_many :line_items, dependent: :destroy


end
