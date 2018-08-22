Types::StatsType = GraphQL::ObjectType.define do
  name 'Stats'

  field :hp, types.String do
    resolve -> (stats, args, ctx) {
      return stats.hp_text
    }
  end

  field :mp, types.String do
    resolve -> (stats, args, ctx) {
      return stats.mp_text
    }
  end

  field :movespeed, types.String do
    resolve -> (stats, args, ctx) {
      return stats.movespeed_text
    }
  end

  field :armor, types.String do
    resolve -> (stats, args, ctx) {
      return stats.armor_text
    }
  end

  field :spellblock, types.String do
    resolve -> (stats, args, ctx) {
      return stats.spellblock_text
    }
  end

  field :attackrange, types.String do
    resolve -> (stats, args, ctx) {
      return stats.attackrange_text
    }
  end

  field :hpregen, types.String do
    resolve -> (stats, args, ctx) {
      return stats.hpregen_text
    }
  end

  field :mpregen, types.String do
    resolve -> (stats, args, ctx) {
      return stats.mpregen_text
    }
  end

  field :crit, types.String do
    resolve -> (stats, args, ctx) {
      return stats.crit_text
    }
  end

  field :attackdamage, types.String do
    resolve -> (stats, args, ctx) {
      return stats.attackdamage_text
    }
  end

  field :attackspeed, types.String do
    resolve -> (stats, args, ctx) {
      return stats.attackspeed_text
    }
  end

end
