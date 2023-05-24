class Api::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: { message: 'User created successfully', status: 201 }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :user_name, :photo, :date_of_birth, :email, :password)
  end
end
