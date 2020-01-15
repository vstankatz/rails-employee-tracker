Rails.application.routes.draw do
  root 'divisions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :divisions do
    resources :employees
  end
  resource :employees
  resource :projects
end
