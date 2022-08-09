class DonorsController < ApplicationController
  def donor_register
    @user_record = session[:user_id]
    @donor_record = Donor.all
  end
  
  def create
    donor = Donor.new(user_params)
    user_record = session[:user_id]
    donor.user_id = user_record["id"]
    if donor.save
      redirect_to root_path
    else
      render plain: "failed successfully"
    end
  end
  private
  def user_params
    params.require(:donor).permit(:blood_group, :dob, :date_of_birth, :last_donation_date, :gender, :state ,:district, :pincode)
  end
end
