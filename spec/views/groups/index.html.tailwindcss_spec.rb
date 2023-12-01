require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'Groups Index Page', type: :system do
  fixtures :users, :groups

  before do
    user = users(:one)
    sign_in user
  end

  it 'displays the group name' do
    visit groups_path
    expect(page).to have_content('Tools')
  end

  it 'displays the log out' do
    visit groups_path
    expect(page).to have_content('Log out')
  end

  it 'displays the button to create a new group' do
    visit groups_path
    expect(page).to have_content('New group')
  end

  it 'leads the user to the purchases of the group page' do
    visit groups_path
    click_on 'Tools'
    expect(page).to have_content('Tools')
  end
end
