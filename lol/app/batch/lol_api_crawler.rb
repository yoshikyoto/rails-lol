class Batch::LolApiCrawler

  def self.execute
    puts "start"
    lol_service = Lol::LolService.new
    versions = lol_service.latest_versions
    puts versions
    lol_service.update_versions(versions)
    repo = Lol::LolRepository.new
    champions = repo.champions("8.14.1")
    # puts champions
    model = Models::Champion.new
  end

end
