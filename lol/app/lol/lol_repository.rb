class Lol::LolRepository
  def initialize()
    @static_data_api = Externals::RiotGames::Api::StaticDataApi.new
  end

  def versions()
    @static_data_api.versions()
  end

  def champions(version)
    @static_data_api.champions(version, 'ja_JP')
  end
end
