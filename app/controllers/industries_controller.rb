class IndustriesController < ApplicationController
  
  before_action :only_admin
  before_action :set_industry, only: [:delete_industry]
  before_action :set_slug, only: [:edit, :update]
  layout "account"

  def new
    @industry = Industry.new
    @industries = Industry.all.order("created_at desc")
  end

  def create
    @industry = Industry.new(params_industry)
    if @industry.save
      redirect_to industry_new_url
    end
  end

  def edit
    @industries = Industry.all.order("created_at desc")
  end

  def update
    if @industry.update(params_industry)
      redirect_to industry_new_url
    end
  end

  def delete_industry
    @industry.destroy
  end

  private

  def params_industry
    params.require(:industry).permit(:name)
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_industry
    @industry = Industry.find(params[:id])
  end

  def set_slug
    @industry = Industry.find_by_slug!(params[:id])
  end
end
