require 'rails_helper'

RSpec.describe Api::V1::StatusesController do
  it 'responds to GET' do
    get :show, format: :json
    expect(JSON.parse(response.body)).to eq('status' => 'ok')
  end
end
