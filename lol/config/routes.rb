# coding: utf-8
Rails.application.routes.draw do
  if Rails.env.development?
  # graphqlデバッグ用ライブラリgraphiqlを利用するためのルーティング
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end

  post '/graphql', to: 'graphql#execute'
  get '/', to: 'application#index'
  get '/champions/:id', to: 'application#index'
end
