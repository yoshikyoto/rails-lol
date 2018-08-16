class Batch::LolApiCrawler

  def self.execute
    puts "start"
    lol_service = Lol::LolService.new
    versions = lol_service.latest_versions
    puts versions
    repo = Lol::LolRepository.new
    champion_ids = repo.latest_champion_ids("8.14.1")
    champion_id = champion_ids[0]
    c = repo.latest_champion("8.14.1", champion_id)
    puts c
    puts c.id
    puts c.name
    puts c.region
    puts c.version
    puts c.body
    model = Models::Champion.new
  end

end
