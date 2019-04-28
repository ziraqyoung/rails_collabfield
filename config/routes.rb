Rails.application.routes.draw do

  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end
  
  # configure devise routing controller registrations to point to our custon controller registrations.
  devise_for :users, :controllers => { :registrations => :registrations }
  
  root to: 'pages#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
