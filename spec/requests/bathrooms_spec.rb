require 'rails_helper'

RSpec.describe 'Bathrooms API' do
  # Initialize the test data
  let!(:location) { create(:location) }
  let!(:bathrooms) { create_list(:bathroom, 20, bathroom_id: bathroom.id) }
  let(:location_id) { location.id }
  let(:id) { bathrooms.first.id }

  # Test suite for GET /locations/:location_id/bathrooms
  describe 'GET /locations/:location_id/bathrooms' do
    before { get "/locations/#{location_id}/bathrooms" }

    context 'when location exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all location bathrooms' do
        expect(json.size).to eq(20)
      end
    end

    context 'when location does not exist' do
      let(:location_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Location/)
      end
    end
  end

  # Test suite for GET /locations/:location_id/bathrooms/:id
  describe 'GET /locations/:location_id/bathrooms/:id' do
    before { get "/locations/#{location_id}/bathrooms/#{id}" }

    context 'when location bathroom exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the bathroom' do
        expect(json['id']).to eq(id)
      end
    end

    context 'when todo item does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Bathroom/)
      end
    end
  end

  # Test suite for PUT /todos/:todo_id/items
  describe 'POST /locations/:location_id/bathrooms' do
    let(:valid_attributes) { { location_description: 'Ground floor towards the back', is_fam_friendly: true, is_gendered: true, is_accessible: true, rating:4, location_id:6}}

    context 'when request attributes are valid' do
      before { post "/locations/#{todo_id}/items", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post "/locations/#{location_id}/bathrooms", params: {} }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a failure message' do
        expect(response.body).to match(/Validation failed: Name can't be blank/)
      end
    end
  end

  # Test suite for PUT /todos/:todo_id/items/:id
  describe 'PUT /locations/:location_id/bathrooms/:id' do
    let(:valid_attributes) { { location_description: 'Ground floor towards the back', is_fam_friendly: true, is_gendered: true, is_accessible: true, rating:4, location_id:6}}

    before { put "/locations/#{location_id}/bathrooms/#{id}", params: valid_attributes }

    context 'when bathroom exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end

      it 'updates the bathroom' do
        updated_bathroom = Bathroom.find(id)
        expect(updated_bathroom.name).to match(/Mozart/) #TODO change .name to other attribute
      end
    end

    context 'when the bathroom does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Item/)
      end
    end
  end

  # Test suite for DELETE /todos/:id
  describe 'DELETE /locations/:id' do
    before { delete "/locations/#{location_id}/bathrooms/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
