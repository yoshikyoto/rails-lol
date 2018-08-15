class Batch::LolApiCrawler

  def self.execute
    puts "start"
    lol_service = Lol::LolService.new
    versions = lol_service.versions
    puts versions
  end

end
