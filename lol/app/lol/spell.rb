class Lol::Spell
  attr_reader :name
  def initialize(
        id,
        name,
        description
      )
    @id = id
    @name = name
    @description = description
  end
end
