Rails.application.routes.draw do

    resources :people
    resources :posts

    resources :people do
      resources :posts
    end

    namespace :api do
        namespace :v1 do
            resources :people do
              resources :posts
            end
            resources :posts
        end
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
