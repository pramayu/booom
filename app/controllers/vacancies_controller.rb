class VacanciesController < ApplicationController

  layout "vacancies"
  before_action :set_vacancy, only: [:edit, :update, :show, :destroy]
  # before_action :who_have, only: [:destroy]
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @recents = Vacancy.all.order("created_at desc").limit(8)
    @designers = Vacancy.all.where(category_id: 1135).order("created_at desc").limit(8)
    @programmers = Vacancy.all.where(category_id: 1134).order("created_at desc").limit(8)
    @animators = Vacancy.all.where(category_id: 1136).order("created_at desc").limit(8)
    @networks = Vacancy.all.where(category_id: 1137).order("created_at desc").limit(8)
    @vacancies = Vacancy.all
  end

  def new
    @vacancy = current_user.vacancies.build
    @category = Category.all.where(to_item: 'vacancies').order('name')
    @country = Country.all.order('name')
  end

  def create
    @vacancy = current_user.vacancies.build(vacancy_params)
    if @vacancy.save
      redirect_to vacancy_url(@vacancy)
    else
      render 'new'
    end
  end

  def edit
    @category = Category.all.where(to_item: 'vacancies').order('name')
    @country = Country.all.order('name')
  end

  def show

  end

  def update
    if @vacancy.update(vacancy_params)
      redirect_to vacancy_url(@vacancy)
    else
      render 'edit'
    end
  end

  def destroy
    @vacancy.destroy 
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def get_designer
    @category = Category.where(:slug => params[:category]).first
    @agathas = @category.vacancies.order("created_at desc")
    @vacancies = @category.vacancies
  end

  def search_vacancy
    @vacancies = Vacancy.search_vacancy(params) 
  end

 

  private

  def vacancy_params
    params.require(:vacancy).permit(:name, :description, :location, :job_type, :recruiter, :experience, :category_id, :country_id, :state_id, :vacancy_skill, :url_form)
  end

  def set_vacancy
    @vacancy = Vacancy.find_by_slug!(params[:id])
  end

  def who_have
    @vacancy = Vacancy.find_by_slug!(params[:id])
    redirect_to dashboard_path if current_user.id != @vacancy.user.id
  end
end
