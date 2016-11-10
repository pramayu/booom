class ReviewsController < ApplicationController
	before_action :signed_in_user

	def create
		if params[:theme_id]
			@theme = Theme.find_by_slug!(params[:theme_id])
		elsif params[:code_id]
			@code = Code.find_by_slug!(params[:code_id])
		elsif params[:graphic_id]
			@graphic = Graphic.find_by_slug!(params[:graphic_id])
		elsif params[:t3d_id]
			@t3d = T3d.find_by_slug!(params[:t3d_id])
		elsif params[:videofx_id]
			@video = Videofx.find_by_slug!(params[:videofx_id])
		elsif params[:font_id]
			@font = Font.find_by_slug!(params[:font_id])
		elsif params[:course_id]
			@course = Course.find_by_slug!(params[:course_id])
		end
		@review = Review.create!(params[:review].permit(:rating, :comment))
		@review.user_id = current_user.id
		@review.theme_id = @theme.id if @theme.present?
		@review.code_id = @code.id if @code.present?
		@review.graphic_id = @graphic.id if @graphic.present?
		@review.t3d_id = @t3d.id if @t3d.present?
		@review.videofx_id = @video.id if @video.present?
		@review.font_id = @font.id if @font.present?
		@review.course_id = @course.id if @course.present?
		if @review.save
			respond_to do |format|
				format.js
				format.html { redirect_to item_path(@theme) }
				format.json
			end
		end
	end

	private 

	def params_review
		params.require(:review).permit(:rating, :comment) if params[:review]
	end

	def update_average_reviews(item, average)
		# item.update average_rate: average+=average
	end
end