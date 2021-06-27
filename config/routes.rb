Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :animes, only: :index do
        get 'trending', on: :collection
      end
    end
  end
end
