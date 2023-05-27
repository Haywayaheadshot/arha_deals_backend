class Api::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: { message: 'User created successfully', status: 201 }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def check
    user = User.find_by(email: sign_in_params[:email])
    if user&.valid_password?(sign_in_params[:password])
      token = JWT.encode({ user_id: user.id }, Rails.application.secrets.secret_key_base)
      render json: { message: 'success', token: }
    else
      # handle sign-in failure
      render json: { error: 'Wrong email or password' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :user_name, :photo, :date_of_birth, :email, :password)
  end

  def sign_in_params
    params.require(:user).permit(:email, :password)
  end
end
