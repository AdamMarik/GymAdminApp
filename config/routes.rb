Rails.application.routes.draw do
  resources :check_ins do
    member do
      patch :check_out
    end
  end

  resources :members do
    delete :destroy, on: :member
  end

  resources :item_stocks, only: [:index, :create]

  root 'members#index'
end