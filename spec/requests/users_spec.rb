require 'rails_helper'

RSpec.describe "Users API", type: :request do
  describe "GET /users" do
    let!(:users) { FactoryBot.create_list(:user, 10) }
    before { get users_path }

    it "should return a 200 success status code" do
      expect(response).to have_http_status(200)
    end

    it "should return 10 user entries" do
      expect(json.length).to eq 10
    end
  end

  describe "GET /user/:id" do
    let(:user) { FactoryBot.create(:user) }
    before { get "/users/#{ user.id }" }

    context "when user record exists" do
      it "should return status code 200" do
        expect(response).to have_http_status(200)
      end

      it "should return the correct user" do
        expect(json['id']).to eq user.id
      end
    end
      
    context "when user record does not exist" do
      it "should return status code 404" do
        get "/users/999"
        expect(response).to have_http_status(404)
      end

      it "should return a not found message" do
        get "/users/999"
        expect(response.body).to match(/Couldn't find User/)
      end
    end

  end

  describe "POST /users"
  describe "PUT /users/:id"
  describe "DELETE /users/:id"
end
