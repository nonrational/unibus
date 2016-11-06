require 'rails_helper'

RSpec.describe Api::V1::StatusesController do
  it 'responds to GET' do
    get :show
    expect(JSON.parse(response)).to eq('status' => 'ok')
  end
end
