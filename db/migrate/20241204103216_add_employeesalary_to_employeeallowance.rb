class AddEmployeesalaryToEmployeeallowance < ActiveRecord::Migration[7.2]
  def change
    add_reference :employeeallowances, :employeesalary, null: false, foreign_key: true
  end
end
