Rails.application.routes.draw do
  # configure devise routing controller registrations to point to our custon controller registrations.
  devise_for :users, :controllers => { :registrations => :registrations }
  
  root to: 'pages#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
