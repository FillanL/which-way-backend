Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :games
      post "/game", to: "games#newgame"
    end
  end
end
