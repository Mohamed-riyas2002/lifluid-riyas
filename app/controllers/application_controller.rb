# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def self.index
    Donor.all
  end
end
