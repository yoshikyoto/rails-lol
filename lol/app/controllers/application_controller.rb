require_dependency '../models/lol/lol_repository'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    repo = LoLRepository.new()
    champions = repo.champions '8.11.1'
    puts champions
    render html: champions
  end
end
