# frozen_string_literal: true

class SearchController < ApplicationController
  def search_donor
    @donor_details = []
    puts '========================='
    puts @donor_details.nil?
    @donor_details = []
  end

  def search_query
    return redirect_to '/search/search_donor' if params[:blood_group].nil?

    @donor_details = Donor.where(blood_group: params[:blood_group], district: params[:district])
    @riyas = "Couldn't Find The Donor" if !params[:blood_group].nil? && @donor_details.length.zero?
    # search_query[0].user.name
    # blood = search_query[0].blood_group
    # user_name = search_query[0].user.name
    flash[:alert] = @donor_details
    render '/search/search_donor'
  end

  def search_blood_bank
    @blood_bank_details = []
  end

  def query_blood_bank
    return redirect_to '/search/search_blood_bank' if params[:district].nil?

    @blood_bank_details = BloodBank.where(district: params[:district])
    @search = "Couldn't Find The Blood Bank Near You" if !params[:district].nil? && @blood_bank_details.length.zero?
    render '/search/search_blood_bank'
  end
end
