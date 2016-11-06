require 'rails_helper'

RSpec.describe "API status check" do
  let(:user_params) { { email: 'hal@unib.us', password: 'true-z-coordinate' } }

  before { Admin.new(user_params).tap(&:save!) }

  it 'succeeds with valid password' do
    get '/api/v1/status'

    expect(JSON.parse(response.body)).to eq('status' => 'ok')
    expect(response.code).to eq '200'
  end
end
