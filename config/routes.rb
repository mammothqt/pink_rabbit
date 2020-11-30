Rails.application.routes.draw do
  scope '(:locale)', locale: /en|vi/ do
    # devise_scope :users do
    #   root 'devise/sessions#new'
    # end

    devise_for :users
    as :user do
      get 'sign_in' => 'devise/sessions#new'
      post 'sign_in' => 'devise/sessions#create'
      delete 'sign_out' => 'devise/sessions#destroy'
    end

    resources :bookings

    resources :stadiums

    resources :votings
  end
end
