require 'rails_helper'

RSpec.describe "currencies/edit", type: :view do
  before(:each) do
    @currency = assign(:currency, Currency.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit currency form" do
    render

    assert_select "form[action=?][method=?]", currency_path(@currency), "post" do

      assert_select "input#currency_name[name=?]", "currency[name]"

      assert_select "textarea#currency_description[name=?]", "currency[description]"
    end
  end
end
