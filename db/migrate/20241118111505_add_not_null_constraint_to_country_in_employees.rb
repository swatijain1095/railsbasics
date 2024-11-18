class AddNotNullConstraintToCountryInEmployees < ActiveRecord::Migration[7.2]
  def change
    change_column_null :employees, :country_id, false
  end
end
