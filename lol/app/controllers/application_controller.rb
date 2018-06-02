require_dependency '../models/lol/lol_repository'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    repo = LolRepository.new('jp1')
    champions = repo.champions '8.11.1'
    puts champions
    render html: champions
  end
end
