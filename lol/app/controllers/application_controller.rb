require_dependency '../models/api/riot_games/static_data_api'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    api = StaticDataApi.new
    render html: api.get
  end
end
