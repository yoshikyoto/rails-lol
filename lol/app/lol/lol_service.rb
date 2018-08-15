class Lol::LolService
  def initialize()
    @lol_repository = LolRepository.new
  end

  def versions()
    versions_raw = @lol_repository.versions
    versions = versions_raw.select {|version|
      # パッチ名が lolpatch_7.20 のようになっているものがあるのでそれは除外する
      # パッチ 0.x.x のものは除外する
      version.index('lolpatch_') != 0 && version.index('0.') != 0
    }
    return versions
  end
end
