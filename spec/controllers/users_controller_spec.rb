require 'rails_helper'

describe UsersController, type: :controller do

  describe 'GET #show unauthorized' do
    it 'should redirect to login page if user is not authorized' do
      get :show, id: 1, format: :html

      expect(response).to have_http_status(302)
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe 'GET #show' do
    login_user
    it 'should show user page when user is logged in' do
      get :show, id: 1, format: :html

      expect(response).to have_http_status(200)
    end
  end

  describe 'PUT #update' do
    login_user

    it 'should update user' do
      user_params = {first_name: 'new_first_name', last_name: 'new_last_name'}

      put :update, id: 1, user: user_params, format: :html
      expect(assigns(:current_user).first_name).to eq('new_first_name')
      expect(response).to redirect_to(user_path(1))
    end
  end

end