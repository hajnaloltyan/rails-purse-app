require 'rails_helper'

RSpec.describe 'purchases/edit', type: :view do
  let(:purchase) do
    Purchase.create!
  end

  before(:each) do
    assign(:purchase, purchase)
  end

  it 'renders the edit purchase form' do
    render

    assert_select 'form[action=?][method=?]', purchase_path(purchase), 'post' do
    end
  end
end
