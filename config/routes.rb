Rails.application.routes.draw do  
  
  post "/links" => 'links#create'
  root 'home#index'
end
