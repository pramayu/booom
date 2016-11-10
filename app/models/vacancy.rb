class Vacancy < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :country
  belongs_to :state
  has_many :allskills, dependent: :destroy
  has_many :skills, through: :allskills


  def self.search_vacancy(params)
    vacancies = Vacancy.where(category_id: params[:category].to_i) if params[:category].present?
    if params[:category].present?
    vacancies = vacancies.where("(job_type LIKE ?)", "%#{params[:type]}%")  if params[:type].present?
    vacancies = vacancies.where(state_id: params[:location].to_i) if params[:location].present?
    elsif !params[:category].present?
    vacancies = Vacancy.where("(job_type LIKE ?)", "%#{params[:type]}%")  if params[:type].present?
    vacancies = Vacancy.where(state_id: params[:location].to_i) if params[:location].present?
    end
    vacancies
  end

  def vacancy_skill=(names)
    self.skills = names.split(",").map do |name|
      Skill.where(name: name.strip).first_or_create!
    end
  end

  def vacancy_skill
    self.skills.map(&:name).join(",")
  end

  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.parameterize
  end
end
