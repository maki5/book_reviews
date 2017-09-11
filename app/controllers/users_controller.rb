class UsersController < ApplicationController

  before_action :authenticate_user!

  def update
    #assign current user to instance var for testing
    @current_user = current_user
    mes = @current_user.update_attributes(permitted_params) ? "updated" : book.errors.full_messages

    respond_to do |format|
      format.html {redirect_to user_path(@current_user), notice: mes}
    end
  end

  def permitted_params
    params.require(:user).permit(:first_name, :last_name)
  end
end