class Lol::LolRepository
  def initialize()
    @static_data_api = Externals::RiotGames::Api::StaticDataApi.new
  end

  ## latest_xxx 系のメソッドはAPIから最新の情報を取得してくるメソッド
  def latest_versions()
    @static_data_api.versions()
  end

  def latest_champion_ids(version)
    @static_data_api.champion_ids(version, 'ja_JP')
  end

  def latest_champion(version, id)
    @static_data_api.champion(version, 'ja_JP', id)
  end

  def save(champion)
    model = Models::Champion.find_or_create_by(id: champion.id);
    model.update_attributes(
      name_jp: champion.name,
      version: champion.version,
      body: champion.body
    )
  end

  def exists(version)

  end
end
