Types::SpellType = GraphQL::ObjectType.define do
  name 'Spell'

  field :name, types.String do
    resolve -> (spell, args, ctx) {
      return spell.name
    }
  end

  field :description, types.String do
    resolve -> (spell, args, ctx) {
      return spell.description
    }
  end

end
