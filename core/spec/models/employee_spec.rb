require 'rails_helper'

RSpec.describe Employee do
  it 'requires a password' do
    expect(Employee.new).not_to be_valid
  end

  it 'can be valid' do
    expect(Employee.new(
      email: 'hal@unib.us',
      password: 'true-z-coordinate'
    )).to be_valid
  end
end
