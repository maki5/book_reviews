require 'rails_helper'

describe UsersController, type: :controller do

  describe 'GET #show' do
    it 'should redirect to login page if user is not authorized' do
      get :show, id: 1, format: :html

      expect(response).to have_http_status(302)
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end