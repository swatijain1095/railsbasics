class AddAllowancetypeToEmployeeallowance < ActiveRecord::Migration[7.2]
  def change
    add_reference :employeeallowances, :allowancetype, null: false, foreign_key: true
  end
end
