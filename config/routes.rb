Rails.application.routes.draw do
  root 'creatures#index'

  get '/creatures' => 'creatures#index', as: 'creatures'
  get '/creatures/new' => 'creatures#new', as: 'new_creature'
  post '/creatures' => 'creatures#create'
  get '/creatures/:id' => 'creatures#show', as: 'creature'
  
end
