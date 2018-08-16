require 'faraday'
require 'json'

# API Documents
# https://developer.riotgames.com/static-data.html
class Externals::RiotGames::Api::StaticDataApi
  def initialize()
    @base_url = 'https://ddragon.leagueoflegends.com'
    @client = Faraday.new(@base_url)
  end

  def versions
    response = @client.get do |request|
      request.url '/api/versions.json'
    end
    JSON.parse(response.body)
  end

  def champions(version, region)
    response = @client.get do |request|
      request.url '/cdn/' + version + '/data/' + region + '/champion.json'
    end
    json = JSON.parse(response.body)
    json['data']
  end

  def champion_ids(version, region)
    self.champions(version, region).map{|id, item|
      id
    }
  end
end
