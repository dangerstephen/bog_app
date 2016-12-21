Rails.application.routes.draw do
  root 'creatures#index'

  get '/creatures' => 'creatures#index', as: 'creatures'
  get '/creatures/new' => 'creatures#new', as: 'new_creature'
  post '/creatures' => 'creatures#create'
  get '/creatures/:id' => 'creatures#show', as: 'creature'
  get '/creatures/:id/edit' => 'creatures#edit', as: 'edit_creature'
  patch '/creatures/:id' => 'creatures#update'
  delete '/creatures/:id' => 'creatures#destroy'
end
