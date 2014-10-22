require 'rails_helper'

feature "Home page" do
  before { visit products_path }

  scenario "shows Hello World" do
    page.should have_content('Hello World')
  end
end