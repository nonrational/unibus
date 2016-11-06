Api::Engine.routes.draw do
  scope '/v1' do
    resource :status, only: :show
  end
end
