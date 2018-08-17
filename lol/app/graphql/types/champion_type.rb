Types::ChampionType = GraphQL::ObjectType.define do
  name 'Champion'

  field :id, types.String do
    description 'チャンピオンのID'
    resolve -> (champion, args, ctx) {
      return champion.id
    }
  end

  field :name, types.String do
    description 'チャンピオンの名前'
    resolve -> (champion, args, ctx) {
      return champion.name
    }
  end

  field :version, types.String do
    description 'パッチのバージョン'
    resolve -> (champion, args, ctx) {
      return champion.version
    }
  end

  field :body, types.String do
    description 'チャンピオンのデータ'
    resolve -> (champion, args, ctx) {
      puts champion.body
      return champion.body
    }
  end

end
