require 'faraday'
require 'json'

# API Documents
# https://developer.riotgames.com/static-data.html
class StaticDataApi
  def initialize()
    @base_url = 'https://ddragon.leagueoflegends.com'
    @client = Faraday.new(@base_url)
  end

  def versions
    # puts @client.get '/versions'
    response = @client.get do |request|
      request.url '/api/versions.json'
    end
    # puts response.body
    JSON.parse(response.body)
  end

  def champions(version, region)
    response = @client.get do |request|
      request.url '/cdn/' + version + '/data/' + region + '/champion.json'
    end
    # puts response.body
    JSON.parse(response.body)
  end
end
