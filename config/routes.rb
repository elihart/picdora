Picdora::Application.routes.draw do

  root 'users#index'

  match ':controller(/:action(/:id))', via: :all
end
