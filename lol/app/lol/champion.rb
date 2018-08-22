require 'json'

class Lol::Champion
  attr_reader :id, :name, :region, :version, :body, :stats
  def initialize(id, name, region, version, body)
    @id = id
    @name = name
    @region = region
    @version = version
    @body = body
    @parsed_body = JSON.parse(body)
    @stats = Lol::Stats.new(
      @parsed_body['stats']['hp'],
      @parsed_body['stats']['hpperlevel'],
      @parsed_body['stats']['mp'],
      @parsed_body['stats']['mpperlevel'],
      @parsed_body['stats']['movespeed'],
      @parsed_body['stats']['armor'],
      @parsed_body['stats']['armorperlevel'],
      @parsed_body['stats']['spellblock'],
      @parsed_body['stats']['spellblockperlevel'],
      @parsed_body['stats']['attackrange'],
      @parsed_body['stats']['hpregen'],
      @parsed_body['stats']['hpregenperlevel'],
      @parsed_body['stats']['mpregen'],
      @parsed_body['stats']['mpregenperlevel'],
      @parsed_body['stats']['crit'],
      @parsed_body['stats']['critperlevel'],
      @parsed_body['stats']['attackdamage'],
      @parsed_body['stats']['attackdamageperlevel'],
      @parsed_body['stats']['attackspeedoffset'],
      @parsed_body['stats']['attackspeedperlevel']
    )
  end
end
