require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'Purchases Show Page', type: :system do
  fixtures :users, :groups, :purchases

  before do
    user = users(:one)
    sign_in user
    @group = groups(:one)
    @purchase = purchases(:one)
  end

  it 'displays the purchase name' do
    visit group_purchase_path(@group, @purchase)
    expect(page).to have_content('Hammer')
  end

  it 'displays the purchase amount' do
    visit group_purchase_path(@group, @purchase)
    expect(page).to have_content(12.00)
  end

  it 'displays the purchase date' do
    visit group_purchase_path(@group, @purchase)
    expect(page).to have_content('2023-11-30')
  end

  it 'displays the delete button' do
    visit group_purchase_path(@group, @purchase)
    expect(page).to have_content('Delete this Purchase')
  end
end
