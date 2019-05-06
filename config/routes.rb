Rails.application.routes.draw do
  root to: 'welcome#hi'
  resources :users do
    member do
      post "hascomment"
      post "hasnotcomment"
    end
  end
  resources :departments do
    member do
      post "like2" =>  "departments#like2"
      post "unlike2" => "departments#unlike2"
    end
  end
end
