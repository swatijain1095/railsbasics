class AddDepartmentToEmployee < ActiveRecord::Migration[7.2]
  def change
    add_reference :employees, :department, foreign_key: true
  end
end
