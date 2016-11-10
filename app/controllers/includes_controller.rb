class IncludesController < ApplicationController

  before_action :only_admin
  before_action :set_include, only: [:edit, :update, :delete_include]
  layout "account"

  def new
    @include = Include.new
    @includes = Include.all.order('created_at desc')
    @toitems = Toitem.all.order('created_at desc')
  end

  def create
    @include = Include.new(params_include)
    if @include.save
      redirect_to include_new_url
    end
  end

  def edit
    @includes = Include.all.order('created_at desc')
    @toitems = Toitem.all.order('created_at desc')
  end

  def update
    if @include.update(params_include)
      redirect_to include_new_url
    end
  end

  def delete_include
    @include.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_url}
      format.js
    end
  end

  private

  def params_include
    params.require(:include).permit(:name, toitem_ids: [])
  end


  def only_admin
    redirect_to dashboard_url if !current_user.admin?
  end

  def set_include
    @include = Include.find(params[:id])
  end

end
