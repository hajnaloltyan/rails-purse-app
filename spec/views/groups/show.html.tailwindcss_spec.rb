require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'Groups Show Page', type: :system do
  fixtures :users, :groups, :purchases

  before do
    user = users(:one)
    sign_in user
    @group = groups(:one)
  end

  it 'displays the group name' do
    visit group_path(@group)
    expect(page).to have_content('Tools')
  end

  it 'displays the purchases of the group' do
    visit group_path(@group)
    expect(page).to have_content('Hammer')
  end

  it 'displays the purchase amount' do
    visit group_path(@group)
    expect(page).to have_content(12.00)
  end

  it 'displays the purchase date' do
    visit group_path(@group)
    expect(page).to have_content('2023-12-01')
  end

  it 'diplays the new purchase button' do
    visit group_path(@group)
    expect(page).to have_content('New Purchase')
  end
end
