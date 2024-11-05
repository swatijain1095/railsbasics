class AddMoreFieldsToEmployee < ActiveRecord::Migration[7.2]
  def change
    add_column :employees, :haspassportØboolean, :string
    add_column :employees, :salary, :integer
    add_column :employees, :notes, :string
    add_column :employees, :birthdate, :date
    add_column :employees, :hiredate, :date
    add_column :employees, :gender, :string
  end
end
