class CreateNewusers < ActiveRecord::Migration[7.2]
  def change
    create_table :newusers do |t|
      t.timestamps
    end
  end
end
