# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

require "will_paginate"

Mime::Type.register "image/png", :png
Mime::Type.register "image/jpg", :jpg
Mime::Type.register "text/x-json", :json

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  # See ActionController::RequestForgeryProtection for details
  protect_from_forgery :only => [:create, :update, :destroy] 

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  def index
  end
end
