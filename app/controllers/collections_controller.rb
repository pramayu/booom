class CollectionsController < ApplicationController

	# before_action :find_collection, only: [:edit, :update]
	before_action :signed_in_user, only: [:show, :edit, :update, :create, :destroy]
	layout "account"

	def create
		# @theme = Theme.find_by_slug!(params[:id])
		@collection = current_user.collections.build(coll_params)
		if @collection.save
			respond_to do |format|
				format.html { redirect_to wishlist_path(current_user) }
				format.js
			end
		else
			redirect_to root_path
		end
	end

	def edit
		@collection = current_user.collections.find(params[:id])
	end

	def update
		@collection = current_user.collections.find(params[:id])
		if @collection.update(coll_params)
			respond_to do |format|
				format.html { redirect_to :back }
				format.js
			end
		else 
			redirect_to root_path
		end
	end

	def show
		user = User.find(params[:user_id])
		@collection = user.collections.find(params[:id])
	end

	def destroy
		user = User.find(params[:user_id])
		@collection = user.collections.find(params[:id])
		@collection.destroy
		redirect_to wishlist_path(user)
	end

	private

	def coll_params
		params.require(:collection).permit(:name)
	end


	# def find_collection
	# 	@collection = Collection.find(params[:id])
	# end

end