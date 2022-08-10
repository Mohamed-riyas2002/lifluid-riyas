# frozen_string_literal: true

class ChangeNullOfWebsite < ActiveRecord::Migration[6.1]
  def change
    change_column_null :blood_banks, :website, false
  end
end
