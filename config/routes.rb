Rails.application.routes.draw do
  devise_for :users
  # ignore ^

  root "books#index"

  resources :books, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

end
