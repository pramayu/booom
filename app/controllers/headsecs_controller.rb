class HeadsecsController < ApplicationController
	def create
		@course = Course.find_by_slug!(params[:course_id])
		@headsec = Headsec.create(params[:headsec].permit(:name))
		@headsec.course_id = @course.id
		if @headsec.save
			respond_to do |format|
				format.html {redirect_to courses_path}
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

	def update
		@course = Course.find_by_slug!(params[:course_id])
		@headsec = Headsec.find(params[:id])
		@headsec.update(headsec_params)
		respond_to do |format|
			format.html {redirect_to root_path}
			format.js
		end
	end

	private

	def headsec_params
		params.require(:headsec).permit(:name)
	end
end