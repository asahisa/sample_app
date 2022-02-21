Rails.application.routes.draw do
  get '/new' => "lists#new"
  get '/top' => "homes#top"
  post 'lists' => "lists#create"
  get 'lists' => "lists#index"
  
  get '/show' => "lists#show"
  get '/edit' => "lists#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
