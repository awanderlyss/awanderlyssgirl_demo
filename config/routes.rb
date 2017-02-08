Rails.application.routes.draw do
  get 'home/index'

  mount Ckeditor::Engine => '/ckeditor'
  
  resources :comments
  resources :posts
end
