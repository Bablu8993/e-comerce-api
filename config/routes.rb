Rails.application.routes.draw do
  resources :users do
    member do
      post :add_product_to_cart
      get  :get_cart_details
    end
  end

  resources :products
  post 'authenticate', to: 'authentications#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
