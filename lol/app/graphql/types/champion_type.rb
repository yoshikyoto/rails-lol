Types::ChampionType = GraphQL::ObjectType.define do
  name 'Champion'
  field :name, types.String do
  	description 'チャンピオンの名前'
    resolve -> (obj, args, ctx) {
      return 'ウーコン'
    }
  end
end
