class ApplicationController < ActionController::API
  def current_user
    User.first
  end

  def encode_token(payload)
    JWT.encode(payload, 'my_secret')
  end

  # Catch all CanCan errors and alert the user of the exception
  # rescue_from CanCanCan::AccessDenied do |exception|
  #   redirect_to root_url, alert: exception.message
  # end

  # ! USE IT AFTER CREATE REACT

  # def auth_header
  #   request.headers['Authorization']
  # end

  # def decoded_token
  #   return auth_header
  #     token = auth_header.split[1]
  #     render json: { failure: auth_header }
  #     begin
  #       JWT.decode(token, 'my_secret', true, algorithm: 'HS256')
  #     rescue JWT::DecodeError
  #       []
  #     end
  #   end
  # end

  # def current_user
  #   decoded_hash = decoden_token
  #   unless decoded_has.empty?
  #     user_id = decoded_hash[0]['user_id']
  #     @user = User.find_by(id: user_id)
  #   end
  # end
end
