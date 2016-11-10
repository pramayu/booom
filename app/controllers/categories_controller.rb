class CategoriesController < ApplicationController
 before_action :only_admin
 before_action :set_category, only: [:delete_category]
 before_action :slug_category, only: [:edit, :update]
 layout "account"

 def new
  @categories = Category.all.order('created_at desc')
  @category = Category.new
 end

 def create
  @category = Category.new(category_params)
  if @category.save
    redirect_to category_new_path 
  end
 end

 def edit
  @categories = Category.all.order('created_at desc')
 end

 def update
   if @category.update(category_params)
     redirect_to category_new_path
   else
     render 'edit'
   end
 end

 def delete_category
  @category.destroy
  respond_to do |format|
    format.html { redirect_to root_path}
    format.js
  end
 end
 
 private

 def category_params
  params.require(:category).permit(:name, :to_item)
 end

 def only_admin
  redirect_to dashboard_url unless current_user.admin?
 end

 def set_category
   @category = Category.find(params[:id])
 end

 def slug_category
   @category = Category.find_by_slug!(params[:id])
 end

end
