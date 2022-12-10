require 'rails_helper'

RSpec.describe 'Categorys', type: :request do
  describe 'GET /index' do
    it 'check category should first pass by the authentification' do
      get categorys_path

      expect(response).to have_http_status(302)
      expect(response.to_s).to_not render_template(:index)
    end

    it 'check category show action' do
      get category_path(1)

      expect(response).to have_http_status(302)
      expect(response).to_not render_template(:show)
    end
  end
end
