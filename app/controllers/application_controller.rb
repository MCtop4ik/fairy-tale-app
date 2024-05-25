class ApplicationController < ActionController::Base
  before_action :set_access_control_headers

  private

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://localhost:49765'
    headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Allow-Credentials'] = 'true'
    headers['Access-Control-Max-Age'] = '1728000'
  end
end
