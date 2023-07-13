require 'rails_helper'

RSpec.describe "Api::V1::Projects", type: :request do
  describe "GET /index" do
    let(:projects) { create_list(:project, 2) }

    before { get "/api/v1/projects" }

    it "returns http success" do
      get "/api/v1/projects"
      expect(response).to have_http_status(:success)
    end

    it "returns a list of projects" do
      expect(response.body.length).to eq(2)
      expect(response.body).to include(projects)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/projects/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/projects/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/projects/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/projects/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
