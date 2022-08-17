# frozen_string_literal: true

class AddUserId < ActiveRecord::Migration[6.1]
  def change
    add_reference :blood_requests, :user, foreign_key: true
  end
end
