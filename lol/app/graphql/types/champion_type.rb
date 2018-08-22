Types::ChampionType = GraphQL::ObjectType.define do
  name 'Champion'

  # GraphQLのクライアントApolloがAPIのレスポンスをキャッシュするが
  # その際にidをキーとして利用してキャッシュするらしい
  # （idがない場合は_idでキャッシュされるっぽい？）
  # championのレスポンスはidが同じでもversionが違うということがあり、
  # idをレスポンスに含めると、キャッシュ機構まわりでバグるので、
  # id以外に、本当にuniqueな_idを返せるようにする
  field :_id, types.String do
    resolve -> (champion, args, ctx) {
      return champion.id + champion.version
    }
  end

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

  field :stats, Types::StatsType do
    description 'ステータス'
    resolve -> (champion, args, ctx) {
      return champion.stats
    }
  end


  field :body, types.String do
    description 'チャンピオンのデータ'
    resolve -> (champion, args, ctx) {
      return champion.body
    }
  end

end
