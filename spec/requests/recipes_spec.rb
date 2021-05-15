require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'GET index' do
    it 'renders the index template' do
      get recipes_path
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      get recipes_path
      expect(response).to render_template('index')
    end
  end

  describe 'GET show' do
    let(:recipe_id) { '4dT8tcb6ukGSIg2YyuGEOm' }
    it 'renders the show template' do
      get recipe_path(recipe_id)
      expect(response).to have_http_status(:success)
    end

    it 'renders the show template' do
      get recipe_path(recipe_id)
      expect(response).to render_template('show')
    end
  end
end
