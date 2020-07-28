Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/create'
  get 'projects/dashboard'
  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
