class CreateEmployeecertificates < ActiveRecord::Migration[7.2]
  def change
    create_table :employeecertificates do |t|
      t.references :employeeinfo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
