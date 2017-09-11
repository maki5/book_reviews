require 'rails_helper'

describe BooksController, type: :controller do
  login_user

  describe 'GET #index' do
    let!(:book) {FactoryGirl.create(:book)}

    it 'should show books page' do
      get :index, format: :html

      expect(response).to have_http_status(200)
      expect(assigns(:books).count).to eq(1)
    end
  end

  describe 'POST #create' do
    let(:book) {FactoryGirl.attributes_for(:book)}

    it 'should create a book' do
      post :create, book: book, format: :html

      expect(response).to have_http_status(302)
      expect(Book.count).to eq(1)
    end
  end
end
