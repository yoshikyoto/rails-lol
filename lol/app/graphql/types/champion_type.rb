require_dependency '../../models/lol/lol_service'

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

  field :iconUrl, types.String do
  	description 'チャンピオンのアイコン画像URL'
  	resolve -> (obj, args, ctx) {
  	  champion_data = obj[1]
  	  version = args[:version]
  	  puts args
  	  return champion_data['image']['full']
  	}
  end
end
