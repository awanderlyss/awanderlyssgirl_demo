Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  
  resources :comments
  resources :posts
end
