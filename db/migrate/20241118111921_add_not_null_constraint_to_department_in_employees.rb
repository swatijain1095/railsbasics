class AddNotNullConstraintToDepartmentInEmployees < ActiveRecord::Migration[7.2]
  def change
    change_column_null :employees, :department_id, false
  end
end
