Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  root "resturants#index"
  resources :resturants do
    resources :reviews, except: [:index, :show]
    collection do
      get 'search'
    end
  end


  match '/about_us', to: 'pages#about_us',      via: :get
  match '/contact_us', to: 'pages#contact_us',  via: :get
  match '/showall', to: 'resturants#showall', via: :get


end
