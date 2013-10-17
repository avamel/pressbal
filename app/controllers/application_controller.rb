class ApplicationController < ActionController::Base
  before_action :set_info
  before_action :set_variable
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, with: :render_500
    rescue_from ActionController::RoutingError, with: :render_404
    rescue_from ActionController::UnknownController, with: :render_404
    rescue_from AbstractController::ActionNotFound, with: :render_404
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
  end

  private

  def set_info
    if Info.last.present?
      @phone_cod1 = Info.last.phone_cod1
      @phone1 = Info.last.phone1
      @phone_cod2 = Info.last.phone_cod2
      @phone2 = Info.last.phone2
      @address = Info.last.address
      @address_link = Info.last.address_link
    end
  end

  def set_variable
    @news = News.published.take(3)
    @attention = Tour.published.get_random(3)
  end

  def render_404
    render :template => '/public/404.html', :status => 404
  end

  def render_500
    render :template => '/public/500.html', :status => 500
  end
end
