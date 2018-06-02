require_dependency '../../models/lol/lol_repository'

Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  field :versions, types[types.String] do
    description 'パッチのバージョン一覧を返す'
    resolve -> (obj, args, ctx) {
      repo = LoLRepository.new()
      return repo.versions
    }
  end

  field :champions, types[types.Champion] do
    description 'すべてのチャンピオンの情報を返す'
    resolve -> (obj, args, ctx) {
      repo = LoLRepository.new("8.11.1")
      return repo.champions
    }
  end

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      puts obj
      puts args
      puts ctx
      "Hello World!"
    }
  end
end
