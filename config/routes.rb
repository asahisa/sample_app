Rails.application.routes.draw do
  #投稿フォームの新規作成
  get "/new" => "lists#new"
  #トップページ
  get "/top" => "homes#top"
  # コメント投稿
  post "lists" => "lists#create"
  #コメント一覧の取得
  get "lists" => "lists#index"
  #コメントIDの取得,  'lists#show' アクションを "list" としても扱う
  get "lists/:id" => "lists#show", as: "list"
  #エディット
  get "/edit" => "lists#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end