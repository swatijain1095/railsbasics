class CreateFileexportemployees < ActiveRecord::Migration[7.2]
  def change
    create_table :fileexportemployees do |t|
      t.string :firstname
      t.string :lastname
      t.integer :salary
      t.string :notes

      t.timestamps
    end
  end
end
