Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      get "search", to: "search#index"

      resources :users, only: [:create, :show]

      resources :profiles, only: [:index, :create, :destroy] do
        member do
          post :register_face
        end

        collection do
          post :recognize_face
          post :recommendations
        end
      end

      resources :contents, only: [:index, :show, :create, :update] do
        collection do
          get :movies
          get :series
        end
      end
    end
  end
end