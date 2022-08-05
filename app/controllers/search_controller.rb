class SearchController < ApplicationController
  # @@present = 0
  def search_donor
    # @present_value = presence
    # @@present = 0
    @donor_details = []

    puts "========================="
    puts @donor_details === nil

    @donor_details = []
  end

  def search_query
    # user = ApplicationController.index
    # @@present = 1
    puts params === nil

    if params[:blood_group] == nil
      return redirect_to "/search/search_donor"
    end


      puts params[:blood_group]
      @donor_details = Donor.where(blood_group: params[:blood_group], district: params[:district])
      

    # search_query[0].user.name

    # blood = search_query[0].blood_group
    # user_name = search_query[0].user.name


    # search_query.each do|search_query_element|
    #   @user_details += User.find(search_query_element.user_id)
    #   # @user_details_array.push(@user_details.name, @user_details.phone_number)
    # end
    flash[:alert] =  @donor_details
    # puts user_details_array
    render '/search/search_donor'
  end
end