require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :users

  it 'has a valid factory' do
    expect(users(:one)).to be_valid
  end

  it 'is invalid without a name' do
    user = users(:one)
    user.name = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without an email' do
    user = users(:one)
    user.email = nil
    expect(user).not_to be_valid
  end
end
