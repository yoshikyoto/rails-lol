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
    response = @client.get do |request|
      request.url '/api/versions.json'
    end
    JSON.parse(response.body)
  end

  def champions(version, region)
    response = @client.get do |request|
      request.url '/cdn/' + version + '/data/' + region + '/champion.json'
    end
    case response.status
      when 400...599
      puts '/champions Error'
      puts 'ErrorCode: ' + response.status.to_s
      puts 'ResponseBody: ' + response.body
    end
    JSON.parse(response.body)
  end
end
