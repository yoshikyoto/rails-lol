Types::ChampionType = GraphQL::ObjectType.define do
  name 'Champion'
  field :name, types.String do
  	description 'チャンピオンの名前'
    resolve -> (obj, args, ctx) {
      # obj[0] には 'MonkeyKong', 'Jax' などのキーが
      # obj[1] がチャンピオンデータの配列になっている
      champion_data = obj[1]
      return champion_data['name']
    }
  end
end
