# frozen_string_literal: true

class AddBigintPhoneNo < ActiveRecord::Migration[6.1]
  def change
    change_column :blood_banks, :phone_number, :bigint
  end
end
