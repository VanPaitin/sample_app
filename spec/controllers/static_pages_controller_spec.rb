require "rails_helper"

RSpec.describe StaticPagesController, type: :controller do
  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    it "should have the right title" do
      get :home
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
    end
    it "should have the right title" do
      get :help
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
    it "should have the right title" do
      get "about"
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    it "should have the right title" do
      get 'contact'
    end
  end
end