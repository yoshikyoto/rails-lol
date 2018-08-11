# coding: utf-8
class Batch::LolApiCrawler

  def self.execute
    puts "execute"
    static_data_api = Externals::RiotGames::Api::StaticDataApi.new
    versions_raw = static_data_api.versions
    versions = versions_raw.select {|version|
      # パッチ名が lolpatch_7.20 のようになっているものがあるのでそれは除外する
      # パッチ 0.x.x のものは除外する
      version.index('lolpatch_') != 0 && version.index('0.') != 0
    }
    puts versions

  end

end
