class Lol::LolService
  def initialize()
    @lol_repository = LolRepository.new
  end

  # パッチ名が lolpatch_7.20 のようになっているものがあるのでそれは除外する
  # パッチ 0.x.x のものは除外する
  def is_valid_version(version)
    version.index('lolpatch_') != 0 && version.index('0.') != 0
  end

  # 最新の状態の「バージョン一覧」を取得する
  def latest_versions()
    versions_raw = @lol_repository.latest_versions
    versions = versions_raw.select {|version|
      self.is_valid_version(version)
    }
    return versions
  end

  def latest_champion(version, champion)
    @lol_repository.latest_champion(version, champion)
  end

  def latest_champion_ids(version)
    @lol_repository.latest_champion_ids(version)
  end

  def save_champions(champions)
    for champion in champions do
      @lol_repository.save(champion)
    end
  end
end
