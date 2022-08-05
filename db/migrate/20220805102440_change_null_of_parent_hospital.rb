class ChangeNullOfParentHospital < ActiveRecord::Migration[6.1]
  def change
    change_column_null :blood_banks, :parent_hospital, false
  end
end
