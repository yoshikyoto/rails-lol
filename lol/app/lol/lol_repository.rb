require 'json'

class Lol::LolRepository
  def initialize()
    @static_data_api = Externals::RiotGames::Api::StaticDataApi.new
  end

  def versions()
    models = Models::Champion.group('version').select('version')
    models.map{ |model|
      model.version
    }
  end

  def champion_history(id)
    models = Models::Champion.where(id: id)
    models.map{ |model|
      Lol::Champion.new(
        model.id,
        model.name_jp,
        'ja_JP',
        model.version,
        model.body
      )
    }
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
    if Models::Champion.exists?(id: champion.id, version: champion.version)
      return
    end
    model = Models::Champion.new(
      id: champion.id,
      name_jp: champion.name,
      version: champion.version,
      body: champion.body
    )
    model.save
  end

  def exists(version)
    Models::Champion.exists?(version: version)
  end
end
