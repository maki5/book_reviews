require 'rails_helper'

describe ReviewsController, type: :controller do
  login_user


  describe 'POST #create' do
    let(:review) {FactoryGirl.attributes_for(:review)}

    it 'should create a book' do
      post :create, review: review, format: :html

      expect(response).to have_http_status(302)
      expect(Review.count).to eq(1)
    end
  end
end
