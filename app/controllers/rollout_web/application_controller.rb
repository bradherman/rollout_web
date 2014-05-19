module RolloutWeb
  class ApplicationController < ActionController::Base
    protect_from_forgery

    before_filter :authorize

    helper :all

    private

    def authorize
      if ENV["RESQUE_WEB_HTTP_BASIC_AUTH_USER"] && ENV["RESQUE_WEB_HTTP_BASIC_AUTH_PASSWORD"]
        authenticate_or_request_with_http_basic {|u, p| u == ENV["RESQUE_WEB_HTTP_BASIC_AUTH_USER"] && p == ENV["RESQUE_WEB_HTTP_BASIC_AUTH_PASSWORD"] }
      end
    end
  end
end