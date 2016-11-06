require 'rails_helper'

RSpec.describe "admin login" do
  let(:user_params) { { email: 'hal@unib.us', password: 'true-z-coordinate' } }

  before { Admin.new(user_params).tap(&:save!) }

  it 'succeeds with valid password' do
    post '/admins/sign_in', params: { admin: user_params }

    expect(response.body).not_to include "Invalid Email or password"
    expect(response.code).to eq "302"
  end
end
