require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  fixtures :users

  before do
    user = users(:one)
    sign_in user
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    fixtures :groups

    it 'returns a success response' do
      group = groups(:one)
      get :show, params: { id: group.to_param }
      expect(response).to be_successful
    end
  end
end
