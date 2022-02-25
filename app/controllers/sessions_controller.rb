class SessionsController < ApplicationController

  def login
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: {user: user, jwt: token, success: "Welcome back, #{user.name}" }
    else
      render json: {failure: "Log in failed! Username or password invalid!"}
    end
  end
end
