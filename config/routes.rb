Ctaa::Application.routes.draw do
  root :to => "home#index"
  match '/canvas' => "home#canvas", :via => :post

  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/signout" => "sessions#destroy", :as => :signout

  # Timeline
  match "/timeline" => "timelines#index", :as => "timeline", :via => :get
    
end
