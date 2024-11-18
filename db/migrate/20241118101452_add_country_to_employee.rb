class AddCountryToEmployee < ActiveRecord::Migration[7.2]
  def change
    add_reference :employees, :country, foreign_key: true
  end
end
