class BrowsersController < ApplicationController
  
  before_action :set_browser, only: [:edit, :update, :delete_browser]
  layout "account"

  def new
    @browser = Browser.new
    @browsers = Browser.all.order('created_at desc')
  end

  def create
    @browser = Browser.new(browser_params)
    if @browser.save
      redirect_to browser_new_url
    end
  end

  def edit
    @browsers = Browser.all.order('created_at desc')
  end

  def update
    if @browser.update(browser_params)
      redirect_to browser_new_url
    end
  end

  def delete_browser
    @browser.destroy
    respond_to do |format|
      format.html {redirect_to dashboard_url}
      format.js
    end
  end

  private

  def browser_params
    params.require(:browser).permit(:name)
  end

  def set_browser
    @browser = Browser.find(params[:id])
  end

  def onlu_admin
    redirect_to dashboard_url if !current_user.admin?
  end

end
