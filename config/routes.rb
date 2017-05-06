Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "resturants#index"
  resources :resturants do
    resources :reviews, except: [:index, :show]
    resources :menus
    collection do
      get 'search'
    end
  end


  #match '/profile', to: 'users#show_profile',   via: :get
  match '/profile', to: 'users#show_profile',   via: :get

  resources :users do
    member do
    end

    collection do
      get 'profile', to: 'users#show_profile'
      get 'send_message'
      post 'send_to_reviewer'
    end
  end

  match '/about_us', to: 'pages#about_us',      via: :get
  match '/contact_us', to: 'pages#contact_us',  via: :get
  match '/showall', to: 'resturants#showall', via: :get
  match '/showReview', to: 'reviews#showReview', via: :get

  match '/add_favorites', to: 'users#add_to_favorites', via: :get
  match '/create_favorite', to: 'favorites#create', via: :get


end
