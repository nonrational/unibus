Api::Engine.routes.draw do
  namespace :v1 do
    resource :status, only: :show
  end
end
