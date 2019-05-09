Rails.application.routes.draw do
  get 'subscribers/create'
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  resources :products
  resources :downloads
  resources :deals
  get 'gallery/index'
  get 'gallery/submit'
  resources :image_posts
  get 'photo/index'
  get 'photo/store'
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/privacy'
  get 'welcome/team'
  get 'welcome/terms'
  get 'welcome/downloads'
  get 'welcome/deals'
  get 'welcome/support'

  get 'store/index'

  resources :articles do
    resources :comments
  end
  
  resources :subscribers

  root 'welcome#index'
end
