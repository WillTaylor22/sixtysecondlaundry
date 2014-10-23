require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to be_success
    end
  end

  describe "GET book" do
    it "returns http success" do
      get :book
      expect(response).to be_success
    end
  end

  describe "GET thankyou" do
    it "returns http success" do
      get :thankyou
      expect(response).to be_success
    end
  end

end
