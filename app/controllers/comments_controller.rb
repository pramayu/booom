class CommentsController < ApplicationController
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
		@comment = Comment.create(params[:comment].permit(:content))
		@comment.user_id = current_user.id
		@comment.theme_id = @theme.id if @theme.present?
		@comment.code_id = @code.id if @code.present?
		@comment.graphic_id = @graphic.id if @graphic.present?
		@comment.t3d_id = @t3d.id if @t3d.present?
		@comment.videofx_id = @video.id if @video.present?
		@comment.font_id = @font.id if @font.present?
		@comment.course_id = @course.id if @course.present?
		if @comment.save
			create_notification @theme, @comment if @theme.present?
			create_notification @code, @comment if @code.present?
			create_notification @graphic, @comment if @graphic.present?
			create_notification @t3d, @comment if @t3d.present?
			create_notification @video, @comment if @video.present?
			create_notification @font, @comment if @font.present?
			create_notification @course, @comment if @course.present?
			respond_to do |format|
				format.html { redirect_to item_path(@theme) }
				format.json
				format.js
			end
		else
			respond_to do |format|
				format.html { render 'new' }
				format.json
				format.js
			end
		end	
	end
	
	private

	def create_notification(item, comment)
		return if item.user.id == current_user.id
		if @theme.present?
			Notification.create(user_id: item.user.id,
							notified_by_id: current_user.id,
							theme_id: item.id,
							identifier: comment.id,
							notice_type: 'comment')
		elsif @code.present?
			Notification.create(user_id: item.user.id,
							notified_by_id: current_user.id,
							code_id: item.id,
							identifier: comment.id,
							notice_type: 'comment')
		elsif @graphic.present?
			Notification.create(user_id: item.user.id,
							notified_by_id: current_user.id,
							graphic_id: item.id,
							identifier: comment.id,
							notice_type: 'comment')
		elsif @t3d.present?
			Notification.create(user_id: item.user.id,
							notified_by_id: current_user.id,
							t3d_id: item.id,
							identifier: comment.id,
							notice_type: 'comment')
		elsif @video.present?
			Notification.create(user_id: item.user.id,
							notified_by_id: current_user.id,
							videofx_id: item.id,
							identifier: comment.id,
							notice_type: 'comment')
		elsif @font.present?
			Notification.create(user_id: item.user.id,
							notified_by_id: current_user.id,
							font_id: item.id,
							identifier: comment.id,
							notice_type: 'comment')
		elsif @course.present?
			Notification.create(user_id: item.user.id,
							notified_by_id: current_user.id,
							course_id: item.id,
							identifier: comment.id,
							notice_type: 'comment')
		end
	end
end