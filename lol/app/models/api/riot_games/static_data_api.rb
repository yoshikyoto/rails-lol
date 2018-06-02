require 'faraday'
require 'json'

class StaticDataApi
  def initialize(region)
    @base_url = 'https://' + region + '.api.riotgames.com'
    @locale = 'ja_JP'
    @client = Faraday.new(@base_url)
    @token = Rails.application.secrets.riot_games_api[:token]
  end

  def versions
    # puts @client.get '/versions'
    response = @client.get do |request|
      request.url '/lol/static-data/v3/versions'
      request.headers['X-Riot-Token'] = @token
    end
    puts response.body
    JSON.parse(response.body)
  end

  def champions(version)
    response = @client.get do |request|
      request.url '/lol/static-data/v3/champions'
      request.headers['X-Riot-Token'] = @token
      request.params = {
        locale: @locale,
        version: version,
        champListData: 'all',
      }
    end
    puts response.body
    JSON.parse(response.body)
  end
end
