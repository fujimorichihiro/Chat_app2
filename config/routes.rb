Rails.application.routes.draw do
  

  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  root 'home#top'

  resources :users, only: [:show, :index, :edit, :update ]

  resources :posts, only: [:show, :index, :new, :create, :destroy ]

  resource :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
