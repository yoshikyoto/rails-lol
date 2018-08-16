class Lol::Champion
  attr_reader :id, :name, :region, :version, :body
  def initialize(id, name, region, version, body)
    @id = id
    @name = name
    @region = region
    @version = version
    @body = body
  end
end
