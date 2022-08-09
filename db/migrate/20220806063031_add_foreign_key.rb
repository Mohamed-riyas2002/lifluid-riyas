class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
    add_reference :blood_banks, :user, foreign_key: true
  end
end
