require 'rails_helper'

RSpec.describe "products/new", :type => :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :price => "9.99",
      :active => false
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_active[name=?]", "product[active]"
    end
  end
end
