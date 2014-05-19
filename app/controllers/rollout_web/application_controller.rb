module RolloutWeb
  class ApplicationController < ActionController::Base
    protect_from_forgery

    before_filter :authorize

    helper :all

    private

    def authorize
      if ENV["ROLLOUT_WEB_HTTP_BASIC_AUTH_USER"] && ENV["ROLLOUT_WEB_HTTP_BASIC_AUTH_PASSWORD"]
        authenticate_or_request_with_http_basic  do |u, p| 
          u == ENV["ROLLOUT_WEB_HTTP_BASIC_AUTH_USER"] && p == ENV["ROLLOUT_WEB_HTTP_BASIC_AUTH_PASSWORD"]
        end
      end
    end
  end
end