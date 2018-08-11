class LoLService
  def self.get_champion_icon_url(version, filename)
    return 'https://ddragon.leagueoflegends.com/cdn/' + version + '/img/champion/' + filename
  end
end