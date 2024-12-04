class CreateEmployeeallowances < ActiveRecord::Migration[7.2]
  def change
    create_table :employeeallowances do |t|
      t.timestamps
    end
  end
end
