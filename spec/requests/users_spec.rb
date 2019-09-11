require 'rails_helper'

RSpec.describe "Users API", type: :request do

# Get all users
  describe "GET /users" do
    let!(:users) { FactoryBot.create_list(:user, 10) }
    before { get users_path }

    it "returns a status code of 200" do
      expect(response).to have_http_status(200)
    end

    it "returns 10 user entries" do
      expect(json.length).to eq 10
    end
  end

# Get a single user
  describe "GET /user/:id" do

    let(:user) { FactoryBot.create(:user) }
    before { get "/users/#{ user.id }" }

    context "when user record exists" do
      it "returns status code of 200" do
        expect(response).to have_http_status(200)
      end

      it "returns the correct user" do
        expect(json['id']).to eq user.id
      end
    end
      
    context "when user record does not exist" do

      it "returns status code 404" do
        get "/users/999"
        expect(response).to have_http_status(404)
      end

      it "returns a not found message" do
        get "/users/999"
        expect(response.body).to match(/Couldn't find User/)
      end
    end

  end

# Create a user
  describe "POST /users" do
    let(:new_user) {{ first_name: 'Dave', last_name: 'Rothfarb', username: 'davemanroth', 
                      email: 'asdfh', password_digest: 'asdf;on' }}

    context "with valid input" do
      before { post "/users", params: new_user }

      it "returns a status code of 201" do
        expect(response).to have_http_status(201)
      end
      
      it "creates a new user" do
        expect(json['last_name']).to eq('Rothfarb')
      end
    end

    context "with invalid input" do
      before { post "/users", params: { first_name: 'Dave' } }

      it "returns a status code of 422" do
        expect(response).to have_http_status(422)
      end
      
      it "returns a validation failure message" do
        expect(response.body).to include("Validation failed")
      end
    end

  end

# Update a user
  describe "PUT /users/:id"
# Delete a user
  describe "DELETE /users/:id"
end
