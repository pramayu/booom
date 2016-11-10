class CourseAutocompletesController < ApplicationController
  def index
    render json: CourseAutocomplete.terms_for(params[:term])
  end
end
