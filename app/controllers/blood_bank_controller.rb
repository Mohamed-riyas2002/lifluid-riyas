# frozen_string_literal: true

class BloodBankController < ApplicationController
  def register_blood_bank
    @blood_bank_record = BloodBank.all
    @user_record = session[:user_id]
  end

  def create_blood_bank
    if (user_params[:website] == '') && (user_params[:parent_hospital] != '')
      blood_bank = BloodBank.new(name: user_params[:name], parent_hospital: user_params[:parent_hospital],
                                phone_number: user_params[:phone_number], email: user_params[:email], address: user_params[:address], state: user_params[:state], district: user_params[:district], pincode: user_params[:pincode], Category: user_params[:Category])
    elsif (user_params[:website] != '') && (user_params[:parent_hospital] == '')
      blood_bank = BloodBank.new(name: user_params[:name], phone_number: user_params[:phone_number],
                                email: user_params[:email], address: user_params[:address], state: user_params[:state], district: user_params[:district], pincode: user_params[:pincode], Category: user_params[:Category], website: user_params[:website])
    elsif (user_params[:website] != '') && (user_params[:parent_hospital] != '')
      blood_bank = BloodBank.new(name: user_params[:name], parent_hospital: user_params[:parent_hospital],
                                phone_number: user_params[:phone_number], email: user_params[:email], address: user_params[:address], state: user_params[:state], district: user_params[:district], pincode: user_params[:pincode], Category: user_params[:Category], website: user_params[:website])
    elsif (user_params[:website] == '') && (user_params[:parent_hospital] == '')
      blood_bank = BloodBank.new(name: user_params[:name], phone_number: user_params[:phone_number],
                                email: user_params[:email], address: user_params[:address], state: user_params[:state], district: user_params[:district], pincode: user_params[:pincode], Category: user_params[:Category])
    end
    user_record = session[:user_id]
    blood_bank.user_id = user_record['id']
    if blood_bank.save
      redirect_to root_path
    else
      render plain: 'Failed Successfully'
    end
  end

  private

  def user_params
    params.require(:blood_banks).permit(:name, :parent_hospital, :phone_number, :email, :address, :state, :district,
                                        :pincode, :Category, :website)
  end
end
