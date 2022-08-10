# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  def login; end

  def register; end

  def destroy
    session.clear
    redirect_to root_path
  end

  def validate
    inputEmail = params[:email]
    password = params[:password]
    user = User.find_by(email: inputEmail)
    if user&.authenticate(password)
      session[:user_id] = user
      redirect_to root_path
    else
      flash[:error] = 'Invalid Login Credentials'
      redirect_to '/login'
    end
  end

  def create
    cpassword = params[:cpassword]
    user = User.new(user_params)
    if cpassword == user[:password_digest]
      redirect_to root_path if user.save
    else
      flash[:error] = "password is not same"
      redirect_to '/users/register'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password_digest, :phone_number)
  end
end