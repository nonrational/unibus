require 'rails_helper'

RSpec.describe Api::V1::StatusesController do
  routes { Api::Engine.routes }

  it 'responds to GET' do
    get :show
    expect(JSON.parse(response.body)).to eq('status' => 'ok')
  end
end
