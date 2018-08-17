Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  field :versions, types[types.String] do
    description 'パッチのバージョン一覧を返す'
    resolve -> (obj, args, ctx) {
      lol_service = Lol::LolService.new
      return lol_service.versions
    }
  end

  field :champions, types[Types::ChampionType] do
    description 'すべてのチャンピオンの情報を返す'
    argument :version, types.String
    resolve -> (obj, args, ctx) {
      repo = Lol::LolRepository.new()
      version = args[:version]
      return repo.champions(version)['data']
    }
  end
end
