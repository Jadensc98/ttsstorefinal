Rails.application.routes.draw do
  get 'user_index' => 'backroom#user_index'
    
  put 'upgrade_user' => 'backroom#upgrade_user'
    
  put 'downgrade_user' => 'backroom#downgrade_user'
    
  delete 'remove' => 'cart#remove'
    
  post 'add_quantity' => 'cart#add_quantity'
    
  post 'reduce_quantity' => 'cart#reduce_quantity'
    
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  devise_for :users

  root 'storefront#home'

  get 'all_items' => 'storefront#all_items'

  get 'furniture' => 'storefront#furniture'

  get 'mens_section' => 'storefront#mens_items'

  get 'womens_section' => 'storefront#womens_items'

  get 'branding' => 'storefront#items_by_brand'

  get 'categorical' => 'storefront#items_by_category'
    
  

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
