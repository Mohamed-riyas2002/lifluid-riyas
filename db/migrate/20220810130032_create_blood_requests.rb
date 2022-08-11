class CreateBloodRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :blood_requests do |t|
      t.string :patient_name
      t.integer :age
      t.string :gender
      t.string :blood_group
      t.string :reason
      t.string :hospital_name
      t.string :state
      t.string :district
      t.string :guardian
      t.bigint :guardian_number
      t.string :email
      t.date :required_before

      t.timestamps
    end
  end
end
