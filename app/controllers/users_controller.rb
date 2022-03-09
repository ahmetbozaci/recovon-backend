class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:id] = @user.id
      payload = { user_id: @user.id }
      token = encode_token(payload)
      render json: { user: @user, jwt: token }
    else
      render json: { status: 'error', errors: @user.errors.full_messages }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:name, :password, :password_confirmation, :email, :admin)
  end
end
