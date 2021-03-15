class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  before_filter :allow_iframe_requests
  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end
end
