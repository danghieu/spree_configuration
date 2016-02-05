require 'rails_helper'

RSpec.describe "currencies/index", type: :view do
  before(:each) do
    assign(:currencies, [
      Currency.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Currency.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of currencies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
