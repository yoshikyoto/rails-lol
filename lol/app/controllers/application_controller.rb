class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    repo = Lol::LolRepository.new
    versions = repo.versions
    # puts champions
    render html: versions
  end
end
