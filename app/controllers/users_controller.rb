# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  def login; end

  def contact; end

  def register; end

  # method for logout
  def destroy
    session.clear
    redirect_to root_path
  end

  # Validating the login
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

  # creating the user
  def create
    cpassword = params[:cpassword]
    password = params[:user][:password]
    user = User.new(user_params)
    if cpassword == password
      user.save
      if user.errors.full_messages.length.positive?
        flash[:error] = user.errors.full_messages.join(',')
        redirect_to '/users/register'
      else
        redirect_to root_path
      end
    else
      flash[:error] = 'password is not same'
      redirect_to '/users/register'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :phone_number)
  end
end
