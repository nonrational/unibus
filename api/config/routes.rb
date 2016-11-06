Api::Engine.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'statuses/show'
    end
  end
end
