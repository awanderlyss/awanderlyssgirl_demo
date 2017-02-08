Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  mount Ckeditor::Engine => '/ckeditor'
  
  resources :comments
  resources :posts
end
