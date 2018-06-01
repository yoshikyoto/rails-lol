
class StaticDataApi
  def get
    return Rails.application.secrets.riot_games_api[:token]
  end
end
