Rails.application.routes.draw do
  root 'creatures#index'

  get '/creatures' => 'creatures#index', as: 'creatures'


end
