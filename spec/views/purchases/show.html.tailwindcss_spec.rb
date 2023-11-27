require 'rails_helper'

RSpec.describe 'purchases/show', type: :view do
  before(:each) do
    assign(:purchase, Purchase.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
