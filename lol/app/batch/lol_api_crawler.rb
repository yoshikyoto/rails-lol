## APIから取ってきてDBに突っ込むという作業をするバッチ
class Batch::LolApiCrawler

  def self.execute
    puts "start update champion data"
    @@lol_service = Lol::LolService.new
    versions = @@lol_service.latest_versions
    for version in versions do
      if @@lol_service.need_to_get_latest_data(version)
        puts 'data already exists version:' + version
        next
      end
      puts 'update data for version:' + version
      champion_ids = @@lol_service.latest_champion_ids(version)
      champions = self.get_champions_by(version, champion_ids)
      @@lol_service.save_champions(champions)
    end
  end

  def self.get_champions_by(version, champion_ids)
    champion_ids.map{ |id|
      champion = @@lol_service.latest_champion(version, id)
      puts 'get champion data:' + champion.id + ' name:' + champion.name + ' datasize:' + champion.body.length.to_s
      sleep(0.1) # APIに負荷をかけすぎないようにsleep
      champion
    }
  end
end
