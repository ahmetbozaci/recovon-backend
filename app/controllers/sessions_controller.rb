class SessionsController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:id] = user.id
      payload = { user_id: user.id }
      token = encode_token(payload)
      render json: { logged_in: true, user: user, jwt: token, success: "Welcome back, #{user.name}" }
    else
      render json: { error: 'Log in failed! Username or password invalid!' }
    end
  end

  def logout
    session.clear
    render json: {
      logged_in: false
    }
  end
end
