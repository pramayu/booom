class SubcategoriesController < ApplicationController

  before_action :only_admin
  before_action :set_subcategory, only: [:edit, :update]
  before_action :din_id, only: [:delete_subcategory]
  layout "account"

 def new
  @subcategory = Subcategory.new
  @categories = Category.all.order('name')
  @subcategories = Subcategory.all.order('created_at desc')
 end

 def create
  @subcategory = Subcategory.new(params_sub)
  if @subcategory.save
    redirect_to subcategory_new_url
  else 
    render 'new'
  end
 end

 def edit
  @subcategories = Subcategory.all.order('created_at desc')
  @categories = Category.all.order('name')
 end

 def update
    if @subcategory.update(params_sub)
      redirect_to subcategory_new_url
    end
 end

 def delete_subcategory
   @subcategory.destroy
   respond_to do |format|
     format.html {redirect_to root_path}
     format.js
   end
 end

 private

 def only_admin
   redirect_to dashboard_url if !current_user.admin?
 end

 def params_sub
  params.require(:subcategory).permit(:name, category_ids: [])
 end

 def set_subcategory
   @subcategory = Subcategory.find_by_slug!(params[:id])
 end

 def din_id
   @subcategory = Subcategory.find(params[:id])
 end

end
