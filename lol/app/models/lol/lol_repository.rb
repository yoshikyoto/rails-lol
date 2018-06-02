require_dependency '../models/api/riot_games/static_data_api'

class LoLRepository
  def initialize()
    @static_data_api = StaticDataApi.new('jp1')
  end

  def versions()
    @static_data_api.versions()
  end

  def champions(version)
    @static_data_api.champions(version)
  end
end
