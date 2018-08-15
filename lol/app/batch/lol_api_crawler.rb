class Batch::LolApiCrawler

  def self.execute
    puts "start"
    lol_service = Lol::LolService.new
    versions = lol_service.versions
    puts versions
    repo = Lol::LolRepository.new
    champions = repo.champions("8.14.1")
    puts champions
  end

end
