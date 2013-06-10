class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :admin, default: false
      t.string :pincode
      t.string :name

      t.timestamps
    end
  end
end
