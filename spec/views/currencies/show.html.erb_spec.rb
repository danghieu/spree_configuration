require 'rails_helper'

RSpec.describe "currencies/show", type: :view do
  before(:each) do
    @currency = assign(:currency, Currency.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
