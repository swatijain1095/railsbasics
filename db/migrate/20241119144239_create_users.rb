class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :gender
      t.date :birthdate
      t.string :email
      t.string :phone
      t.integer :postalcode
      t.string :websiteurl
      t.boolean :termsandcondition
      t.string :role
      t.string :notes

      t.timestamps
    end
  end
end
