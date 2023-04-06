Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'
  get '/top' => 'homes#top'
  get 'lists' => 'lists#index'
  get 'lists/show'
   # .../lists/1 や .../lists/3 に該当する
   get 'lists/:id' => 'lists#show', as: 'list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
