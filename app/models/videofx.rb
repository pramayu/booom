class Videofx < ApplicationRecord

  # slug
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug
  # after_save :update_slug

  # user
  belongs_to :user
  has_many :line_items, dependent: :destroy
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
    else
      all
    end
  end

  def self.videofx_search(term)
    where('LOWER(name) LIKE :term OR LOWER(description) LIKE :term', term: "%#{term.downcase}%")
  end

  # softopen
  belongs_to :softopen

  # encode
  belongs_to :encode

  # latar
  belongs_to :latar

  # vidsub
  belongs_to :vidsub

  # videm
  has_many :videms, dependent: :destroy
  accepts_nested_attributes_for :videms

  # file includes
  has_many :dataincludes, dependent: :destroy
  has_many :includes, through: :dataincludes

  #subcategories
  has_many :datasubcategories, dependent: :destroy
  has_many :subcategories, through: :datasubcategories

  # tag
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  # framerate
  has_many :videorates, dependent: :destroy
  has_many :framerates, through: :videorates

  # videoplug
  has_many :vidplugs, dependent: :destroy
  has_many :aeplugins, through: :vidplugs

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

  acts_as_votable

  has_many :comments, dependent: :destroy
  # notifications
  has_many :notifications, dependent: :destroy

  has_many :diasukas, dependent: :destroy
  has_many :akusukas, through: :diasukas

  belongs_to :team
  has_one :revrest, dependent: :destroy
  accepts_nested_attributes_for :revrest


  # has_many :wishlists, dependent: :destroy

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.parameterize
  end

  has_many :reviews, dependent: :destroy

  # def update_slug
  # 	update_attributes slug: generate_slug
  # end
end
