class AddColumnToBloodReqests < ActiveRecord::Migration[6.1]
  def change
    add_column :blood_requests, :blood_bag , :integer
    add_column :blood_requests, :request_result, :string 
  end
end
