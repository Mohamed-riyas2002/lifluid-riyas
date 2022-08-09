class SearchController < ApplicationController
  def search_donor
    @donor_details = []
    puts "========================="
    puts @donor_details === nil
    @donor_details = []
  end

  def search_query
    if params[:blood_group] == nil
      return redirect_to "/search/search_donor"
    end
    @donor_details = Donor.where(blood_group: params[:blood_group], district: params[:district])
    if params[:blood_group] != nil and @donor_details.length == 0
      @riyas = "Couldn't Find The Donor"
    end
    # search_query[0].user.name
    # blood = search_query[0].blood_group
    # user_name = search_query[0].user.name
    flash[:alert] =  @donor_details
    render '/search/search_donor'
  end
  def search_blood_bank
    @blood_bank_details = []
  end
  def query_blood_bank
    if params[:district] == nil
      return redirect_to "/search/search_blood_bank"
    end
    @blood_bank_details = BloodBank.where(district: params[:district])
    if params[:district] != nil and @blood_bank_details.length == 0
      @search = "Couldn't Find The Blood Bank Near You"
    end
    render '/search/search_blood_bank'
  end
end