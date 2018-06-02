require_dependency '../models/api/riot_games/static_data_api'

class LolRepository
  def initialize(region)
    @static_data_api = StaticDataApi.new(region)
  end


  def champions(version)
    @static_data_api.champions(version)
  end
end