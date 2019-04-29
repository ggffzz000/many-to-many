Rails.application.routes.draw do
  root to: 'welcome#hi'
  resources :users
  resources :departments
end
