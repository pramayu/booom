class ReviewersController < ApplicationController

  before_action :signed_in_user
  before_action :reviewer_path
  before_action :theme_find, only: [:add_to_pro, :del_to_pro, :theme_up]
  before_action :code_find, only: [:add_to_pro_code, :del_to_pro_code, :code_up]
  before_action :graphic_find, only: [:add_to_pro_graph, :del_to_pro_graph, :graphic_up]
  before_action :font_find, only: [:add_to_pro_font, :del_to_pro_font, :font_up]
  before_action :t3d_find, only: [:add_to_pro_t3d, :del_to_pro_t3d, :t3d_up]
  before_action :video_find, only: [:add_to_pro_video, :del_to_pro_video, :video_up]
  before_action :course_find, only: [:add_to_pro_course, :del_to_pro_course, :course_up]
  layout "account"

  def theme_review
    @themetos = Theme.all.where(aggree: [false, nil])
    @themes = Theme.all.where(team_id: current_user.team_id)
  end

  def code_review
    @codeos = Code.all.where(agree: [false, nil])
    @codes = Code.all.where(team_id: current_user.team_id)
  end

  def graph_review
    @graphicos = Graphic.all.where(agree: [false, nil])
    @graphics = Graphic.all.where(team_id: current_user.team_id)
  end

  def font_review
    @fontos = Font.all.where(agree: [false, nil])
    @fonts = Font.all.where(team_id: current_user.team_id)
  end

  def t3d_review
    @t3dos = T3d.all.where(agree: [false, nil])
    @t3ds = T3d.all.where(team_id: current_user.team_id)
  end

  def video_review
    @videoos = Videofx.all.where(agree: [false, nil])
    @videofxes = Videofx.all.where(team_id: current_user.team_id)
  end

  def course_review
    @coursesos = Course.all.where(agree: [false, nil])
    @courses = Course.all.where(team_id: current_user.team_id)
  end

  def add_to_pro
    @theme.update team_id: current_user.team_id
  end

  def del_to_pro
    @theme.update team_id: nil
  end

  def add_to_pro_code
    @code.update team_id: current_user.team_id
  end

  def del_to_pro_code
    @code.update team_id: nil
  end

  def add_to_pro_graph
    @graphic.update team_id: current_user.team_id
  end

  def del_to_pro_graph
    @graphic.update team_id: nil
  end

  def add_to_pro_font
    @font.update team_id: current_user.team_id
  end

  def del_to_pro_font
    @font.update team_id: nil
  end

  def add_to_pro_t3d
    @t3d.update team_id: current_user.team_id
  end

  def del_to_pro_t3d
    @t3d.update team_id: nil
  end

  def add_to_pro_video
    @videofx.update team_id: current_user.team_id
  end

  def del_to_pro_video
    @videofx.update team_id: nil
  end

  def add_to_pro_course
    @course.update team_id: current_user.team_id
  end

  def del_to_pro_course
    @course.update team_id: nil
  end

  def project
    @themes = Theme.all.where(team_id: current_user.team_id)
    @codes = Code.all.where(team_id: current_user.team_id)
    @graphics = Graphic.all.where(team_id: current_user.team_id)
    @fonts = Font.all.where(team_id: current_user.team_id)
    @t3ds = T3d.all.where(team_id: current_user.team_id)
    @videofxes = Videofx.all.where(team_id: current_user.team_id)
    @courses = Course.all.where(team_id: current_user.team_id)
    @team = Team.find(params[:team_id])
    @users = @team.users.where.not(id: current_user.id)
    @messages = @team.messagereviewers.order("created_at desc").limit(100).reverse
  end

  def theme_up
    @theme.build_revrest
  end

  def code_up
    @code.build_revrest
  end

  def graphic_up
    @graphic.build_revrest
  end

  def font_up
    @font.build_revrest
  end

  def t3d_up
    @t3d.build_revrest
  end

  def video_up
    @videofx.build_revrest
  end

  def course_up
    @course.build_revrest
  end

  private

  def theme_find
    @theme = Theme.find_by_slug!(params[:theme_id])
  end

  def code_find
    @code = Code.find_by_slug!(params[:code_id])
  end

  def graphic_find
    @graphic = Graphic.find_by_slug!(params[:graphic_id]) 
  end

  def font_find
    @font = Font.find_by_slug!(params[:font_id]) 
  end

  def t3d_find
    @t3d = T3d.find_by_slug!(params[:t3d_id]) 
  end

  def video_find
    @videofx = Videofx.find_by_slug!(params[:videofx_id]) 
  end

  def course_find
    @course = Course.find_by_slug!(params[:course_id]) 
  end
end
