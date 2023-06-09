class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: { message: 'User created successfully', status: 201 }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def new
    user = User.find_by(email: sign_in_params[:email])
    if user&.valid_password?(sign_in_params[:password])
      render json: { message: 'success', status: 201 }
    else
      # handle sign-in failure
      render json: { error: 'Wrong username or password' }, status: :unauthorized
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
