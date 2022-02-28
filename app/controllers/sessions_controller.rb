class SessionsController < ApplicationController
  def login
    user = User.find_by(name: params[:email])
    if user&.authenticate(params[:password])
      session[:id] = user.id
      payload = { user_id: user.id }
      token = encode_token(payload)
      render json: { status: 200, logged_out: false, user: user, jwt: token, success: "Welcome back, #{user.name}" }
    else
      render json: { failure: 'Log in failed! Username or password invalid!' }
    end
  end

  def logout
    session.clear
    render json: {
      status: 200,
      logged_out: true
    }
  end
end
