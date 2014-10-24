Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  root 'videos#home'

  resources :videos
end
