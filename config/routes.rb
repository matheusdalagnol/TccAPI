Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trackings, only: %i(index show) do 
        collection do
          post :aggressor_create
          post :victim_check_distance
        end
      end
    end
  end
end
