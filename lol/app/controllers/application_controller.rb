require_dependency '../models/api/riot_games/static_api_client'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    api = StaticApiClient.new
    render html: api.get
  end
end
