require 'rails_helper'

RSpec.describe Admin do
  it 'requires a password' do
    expect(Admin.new).not_to be_valid
  end

  it 'can be valid' do
    expect(Admin.new(
      email: 'hal@unib.us',
      password: 'true-z-coordinate'
    )).to be_valid
  end
end
