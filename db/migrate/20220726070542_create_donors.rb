# frozen_string_literal: true

class CreateDonors < ActiveRecord::Migration[6.1]
  def change
    create_table :donors do |t|
      t.string :blood_group
      t.date :date_of_birth
      t.date :last_donation_date
      t.string :gender
      t.string :state
      t.string :district
      t.integer :pincode
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
