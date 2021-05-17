Rails.application.routes.draw do
  root 'articles#index'
  # resources :articles
  get 'articles/about'
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new'
  post '/articles' => 'articles#create', as: 'article_create'
  get '/articles/:id' => 'articles#show', as: 'articles_show'
  get '/articles/:id/edit' => 'articles#edit', as: 'articles_edit'
  put '/articles/:id' => 'articles#update', as: 'articles_update'
  delete '/articles/:id' => 'articles#destroy', as: 'articles_delete'
end
