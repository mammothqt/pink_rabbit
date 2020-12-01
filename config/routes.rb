Rails.application.routes.draw do
  scope '(:locale)', locale: /en|vi/ do
    root 'main_pages#home'

    devise_for :users
    as :user do
      get 'sign_in' => 'devise/sessions#new'
      post 'sign_in' => 'devise/sessions#create'
      delete 'sign_out' => 'devise/sessions#destroy'
    end

    resources :bookings

    resources :stages, except: :show

    resources :votings
  end
end
