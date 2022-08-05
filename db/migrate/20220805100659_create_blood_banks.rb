class CreateBloodBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :blood_banks do |t|
      t.string :name
      t.string :parent_hospital, default: "No Parent Organisation"
      t.integer :phone_number
      t.string :email
      t.string :address
      t.string :state
      t.string :district
      t.integer :pincode
      t.string :Category
      t.string :website, default: "No website"

      t.timestamps
    end
  end
end
