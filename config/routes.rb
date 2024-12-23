Rails.application.routes.draw do
  resources :check_ins do
    member do
      patch :check_out
    end
  end

  resources :members

  resources :item_stocks, only: [ :index, :create, :edit, :update, :destroy ]


  root "members#index"
end
