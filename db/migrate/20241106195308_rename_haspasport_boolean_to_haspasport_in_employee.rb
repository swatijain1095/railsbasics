class RenameHaspasportBooleanToHaspasportInEmployee < ActiveRecord::Migration[7.2]
  def change
    rename_column :employees, :haspassportØboolean, :haspassport
  end
end
