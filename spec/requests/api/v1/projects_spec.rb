require 'rails_helper'

RSpec.describe "Api::V1::Projects", type: :request do
  describe "GET /index" do
    let!(:projects) { create_list(:project, 2) }

    before { get "/api/v1/projects" }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "returns a list of projects" do
      expect(json.length).to eq(2)
    end
  end

  describe "GET /show" do
    context 'valid params' do
      let(:project) { create(:project) }

      it "returns http success" do
        get "/api/v1/projects/", params: { id: project.id }
        expect(response).to have_http_status(:success)
      end

      it "returns a project" do
        get "/api/v1/projects/", params: { id: project.id }
        expect(json).not_to be_empty
        expect(json[0]['id']).to eq(project.id)
      end
    end

    context 'invalid params' do
      it 'returns an error' do
        get "/api/v1/projects/#{100}"
        expect(response).to have_http_status(:not_found)
      end
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
