Rails.application.routes.draw do
  #トップページ
  get "/top" => "homes#top"
  #ルーティングの自動生成
  resources :lists

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # 投稿フォームの新規作成
  # get "/new" => "lists#new"
  # # コメント投稿
  # post "lists" => "lists#create"
  # #コメント一覧の取得
  # get "lists" => "lists#index"
  # #コメントIDの取得,  'lists#show' アクションを "list" としても扱う
  # get "lists/:id" => "lists#show", as: "list"
  # #コメントの編集
  # get "lists/:id/edit" => "lists#edit", as: "edit_list"
  # #編集したコメントの更新
  patch "lists/:id" => "lists#update", as: "update_list"
  # #投稿の削除
  delete "lists/:id" => "lists#destroy", as: "destroy_list"

end