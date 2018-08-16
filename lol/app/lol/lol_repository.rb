class Lol::LolRepository
  def initialize()
    @static_data_api = Externals::RiotGames::Api::StaticDataApi.new
  end

  def latest_versions()
    @static_data_api.versions()
  end

  def latest_champion_ids(version)
    @static_data_api.champion_ids(version, 'ja_JP')
  end
end
