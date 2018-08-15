class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    repo = Lol::LolRepository.new
    champions = repo.champions '8.11.1'
    # puts champions
    render html: champions
  end
end
