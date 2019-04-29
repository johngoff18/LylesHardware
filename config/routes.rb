Rails.application.routes.draw do
  resources :deals
  get 'gallery/index'
  get 'gallery/submit'
  resources :image_posts
  get 'photo/index'
  get 'photo/store'
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
