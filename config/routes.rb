Ctaa::Application.routes.draw do
  root :to => "home#index"
  match '/canvas' => "home#canvas", :via => :post
  
end
