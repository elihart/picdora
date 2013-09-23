Picdora::Application.routes.draw do

  root 'images#index'

  get ':controller(/:action(/:id))'


end
