class DependenciesController < ApplicationController

  layout "account"
  before_action :only_admin
  before_action :set_depe, only: [:edit, :update, :delete_dependency]


  def new
    @depe = Dependency.new
    @depes = Dependency.all.order('created_at desc')
    @categories = Category.all.order('created_at asc')
  end

  def create
    @depe = Dependency.new(params_depen)
    if @depe.save
      redirect_to dependency_new_url
    end
  end

  def edit
    @depes = Dependency.all.order('created_at desc')
    @categories = Category.all.order('created_at desc')
  end

  def update
    if @depe.update(params_depen)
      redirect_to dependency_new_url
    end
  end

  def delete_dependency
    @depe.destroy
    respond_to do |format|
      format.html {redirect_to dashboard_url}
      format.js
    end
  end

  private

  def params_depen
    params.require(:dependency).permit(:name, :category_id)
  end

  def set_depe
    @depe = Dependency.find(params[:id])
  end

  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

end
