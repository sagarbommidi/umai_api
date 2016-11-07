Rails.application.routes.draw do

  # The following is the way to define the routes for resources using namespace
  # namespace :api, defaults: {format: :json} do
  #   namespace :v1 do
  #     resources :owners, only: [:index]
  #     resources :articles, only: [:show]
  #   end
  # end

  get '/owners', to: 'api/v1/owners#index'
  get '/:owner_name', to: 'api/v1/owners#show'
  get '/:owner_name/articles', to: 'api/v1/owners#articles'
  get '/articles/:id', to: 'api/v1/articles#show'
end
