# frozen_string_literal: true

class DonorsController < ApplicationController
  def donor_register
    @user_record = session[:user_id]
    @donor_record = Donor.all
  end

  def request_blood; end

  def create_request
    request = BloodRequest.new(blood_request_params)
    user_record = session[:user_id]
    request.user_id = user_record['id']
    if request.save
      redirect_to root_path
    else
      render plain: 'failed successfully'
    end
  end

  def claim_request
    name = params[:name]
    request = BloodRequest.find_by(patient_name: name)
    request.request_result = 'claimed'
    if request.save
      ClaimRequestMailMailer.with(user: session[:user_id], r_record: request).request_claimed.deliver_now
      redirect_to root_path
    end
  end

  def create
    donor = Donor.new(user_params)
    user_record = session[:user_id]
    donor.user_id = user_record['id']
    if donor.save
      redirect_to root_path
    else
      render plain: 'failed successfully'
    end
  end

  private

  def user_params
    params.require(:donor).permit(:blood_group, :dob, :date_of_birth, :last_donation_date, :gender, :state, :district,
                                  :pincode)
  end

  def blood_request_params
    params.require(:blood_requests).permit(:patient_name, :age, :gender, :blood_group, :reason, :hospital_name, :state,
                                           :district, :guardian, :guardian_number, :email, :required_before, :blood_bag)
  end
end
