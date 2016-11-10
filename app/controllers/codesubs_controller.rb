class CodesubsController < ApplicationController

  before_action :only_admin
  before_action :set_codesub, only: [:edit, :update, :delete_codesub]
  layout "account"

  def new
    @codesub = Codesub.new
    @codesubs = Codesub.all.order('created_at desc')
    @subcategories = Subcategory.all.order('created_at desc')
  end

  def create
    @codesub = Codesub.new(params_codesub)
    if @codesub.save
      redirect_to codesub_new_url
    end
  end

  def edit
    @codesubs = Codesub.all.order('created_at desc')
    @subcategories = Subcategory.all.order('created_at desc')
  end

  def update
    if @codesub.update(params_codesub)
      redirect_to codesub_new_url
    end
  end

  def delete_codesub
    @codesub.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_url}
      format.js
    end
  end

  private

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_codesub
    @codesub = Codesub.find(params[:id])
  end

  def params_codesub
    params.require(:codesub).permit(:name, :subcategory_id)
  end

end
