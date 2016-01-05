Rails.application.routes.draw do
  get '/' => 'teams#index'
  get '/teams' => 'teams#index'

  namespace :api do
    namespace :v1 do
      get '/organizations' => 'organizations#index'
      get '/organizations/:id' => 'organizations#show'
      post '/organizations' => 'organizations#create'
      patch '/organizations/:id' => 'organizations#update'
      delete '/organizations/:id' => 'organizations#destroy'
    end
  end
end
