require 'rails_helper'

RSpec.describe "user login" do
  let(:user_params) { { email: 'dfwallace@emerson.edu', password: 'infinite' } }

  before { User.new(user_params).tap(&:save!) }

  it 'succeeds with valid password' do
    post '/users/sign_in', params: { user: user_params }

    expect(response.body).not_to include "Invalid Email or password"
    expect(response.code).to eq "302"
  end
end
