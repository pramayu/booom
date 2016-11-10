class LanguagesController < ApplicationController

  before_action :only_admin
  before_action :set_language, only: [:edit, :update, :delete_language]
  layout "account"

  def new
    @language = Language.new
    @languages = Language.all.order('created_at desc')
  end

  def create
    @language = Language.new(params_language)
    if @language.save
      redirect_to language_new_url
    end
  end

  def edit
    @languages = Language.all.order('created_at desc')
  end

  def update
    if @language.update(params_language)
      redirect_to language_new_url
    end
  end

  def delete_language
    @language.destroy
  end

  private

  def params_language
    params.require(:language).permit(:name)
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_language
    @language = Language.find(params[:id])
  end

end
