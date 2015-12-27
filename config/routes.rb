Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/' => 'organizations#index'
      get '/organizations' => 'organizations#index'
      get '/organizations/:id' => 'organizations#show'
      post '/organizations' => 'organizations#create'
      patch '/organizations/:id' => 'organizations#update'
      delete '/organizations/:id' => 'organizations#destroy'
    end
  end
end
