require 'rails_helper'

RSpec.describe Group, type: :model do
  fixtures :groups

  it 'has a valid group' do
    expect(groups(:one)).to be_valid
  end

  it 'is invalid without a name' do
    group = groups(:one)
    group.name = nil
    expect(group).not_to be_valid
  end

  it 'is invalid without a user' do
    group = groups(:one)
    group.user = nil
    expect(group).not_to be_valid
  end

  it 'is invalid without an icon' do
    group = groups(:one)
    group.icon = nil
    expect(group).not_to be_valid
  end
end
