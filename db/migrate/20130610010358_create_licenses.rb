class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :name
      t.integer :capacity, default: 0

      t.timestamps
    end
  end
end
