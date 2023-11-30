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

  it 'diplays the new purchase button' do
    visit group_path(@group)
    expect(page).to have_content('New Purchase')
  end

  it 'leads the user to the details of the purchase page' do
    visit group_path(@group)
    click_on 'Hammer'
    expect(page).to have_content('Hammer')
  end

  it 'displays the delete button' do
    visit group_path(@group)
    expect(page).to have_content('Delete this Group')
  end
end
