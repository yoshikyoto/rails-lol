Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  field :versions, types[types.String] do
    description 'パッチのバージョン一覧を返す'
    resolve -> (obj, args, ctx) {
      lol_service = Lol::LolService.new
      return lol_service.versions
    }
  end

  field :champion, types[Types::ChampionType] do
    description 'チャンピオンの情報をバージョンごとに返す'
    argument :id, types.String
    resolve -> (obj, args, ctx) {
      lol_service = Lol::LolService.new
      id = args[:id]
      champion_history = lol_service.champion_history(id)
      return champion_history
    }
  end
end
