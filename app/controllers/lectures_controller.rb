class LecturesController < ApplicationController

	def new
		@lecture = Lecture.new
		@course = Course.find_by_slug!(params[:course_id])
		@headsec = Headsec.find(params[:headsec_id])
		@lectures = @headsec.lectures.where(headsec_id: @headsec).order('created_at asc')
	end

	def create
		@course = Course.find_by_slug!(params[:course_id])
		@headsec = Headsec.find(params[:headsec_id])
		@lecture = Lecture.create(params[:lecture].permit(:name, :description))
		@lecture.headsec_id = @headsec.id
		if @lecture.save
			respond_to do |format|
				format.html { redirect_to courses_path }
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
		@lecture = Lecture.find(params[:id])
		@course = Course.find_by_slug!(params[:course_id])
		@headsec = Headsec.find(params[:headsec_id])
		@lecture.update(lecture_params)
		respond_to do |format|
			format.html {redirect_to root_path}
			format.js
		end
	end

	def deletethis
		@course = Course.find_by_slug!(params[:course_id])
		@lecture = Lecture.find(params[:id])
		@course.headsecs.find(params[:headsec_id]).lectures.destroy(@lecture) if @course.user_id == current_user.id
	end

	private

	def lecture_params
		params.require(:lecture).permit(:name)
	end
end