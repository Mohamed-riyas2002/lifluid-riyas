class BloodBankController < ApplicationController
  def register_blood_bank
  end
  def create_blood_bank
    blood_bank = BloodBank.new(user_params)
    user_record = session[:user_id]
    p "=========================================="
    p user_record
    p "=========================================="
    p blood_bank
  end
  private
  def user_params
    params.require(:blood_banks).permit(:name, :parent_hospital, :phone_number, :email, :address, :state, :district ,:pincode, :Category ,:website)
  end
end
