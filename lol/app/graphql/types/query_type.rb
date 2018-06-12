require_dependency '../../models/lol/lol_repository'

Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  field :versions, types[types.String] do
    description 'パッチのバージョン一覧を返す'
    resolve -> (obj, args, ctx) {
      puts 'versions resolve'
      repo = LoLRepository.new()
      return repo.versions
    }
  end

  field :champions, types[Types::ChampionType] do
    description 'すべてのチャンピオンの情報を返す'
    resolve -> (obj, args, ctx) {
      repo = LoLRepository.new()
      puts repo.champions("8.11.1")
      return repo.champions("8.11.1")['data']
    }
  end

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve -> (obj, args, ctx) {
      puts obj
      puts args
      puts ctx
      "Hello World!"
    }
  end
end
