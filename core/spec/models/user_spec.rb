require 'rails_helper'

RSpec.describe User do
  it 'requires a password' do
    expect(User.new).not_to be_valid
  end

  it 'can be valid' do
    expect(User.new(
      email: 'dfwallace@emerson.edu',
      password: 'infinite'
    )).to be_valid
  end
end
