Rails.application.routes.draw do  
  post "/links" => 'links#create'
  root 'shorturl#home'
end
