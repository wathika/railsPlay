Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'
  get 'messages/new', to:'messages#new'
  post 'messages', to: 'messages#create'
end
