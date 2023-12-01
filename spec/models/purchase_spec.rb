require 'rails_helper'

RSpec.describe Purchase, type: :model do
  fixtures :purchases

  it 'has a valid purchase' do
    expect(purchases(:one)).to be_valid
  end

  it 'is invalid without a name' do
    purchase = purchases(:one)
    purchase.name = nil
    expect(purchase).not_to be_valid
  end

  it 'is invalid without a group' do
    purchase = purchases(:one)
    purchase.group = nil
    expect(purchase).not_to be_valid
  end

  it 'is invalid without an amount' do
    purchase = purchases(:one)
    purchase.amount = nil
    expect(purchase).not_to be_valid
  end
end
