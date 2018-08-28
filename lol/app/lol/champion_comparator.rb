class Lol::ChampionComparator
  # チャンピオンの配列を受け取ってバージョンでソートして返す
  def sort_by_version(champions)
    champions.sort{ |champion1, champion2|
      self.compare_version(champion1.version, champion2.version)
    }
  end

  def compare_version(version1, version2)
    version1_arr =  version1.split(%r{[^\d]+}).map(&:to_i)
    version2_arr =  version2.split(%r{[^\d]+}).map(&:to_i)

    # 上の位から比較する
    compare0 = version1_arr[0] <=> version2_arr[0]
    if compare0 != 0
      return compare0
    end

    compare1 = version1_arr[1] <=> version2_arr[1]
    if compare1 != 0
      return compare1
    end

    compare2 = version1_arr[2] <=> version2_arr[2]
    return compare2
  end
end
