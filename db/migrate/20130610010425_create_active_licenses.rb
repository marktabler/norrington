class CreateActiveLicenses < ActiveRecord::Migration
  def change
    create_table :active_licenses do |t|
      t.integer :machine_id
      t.integer :license_id

      t.timestamps
    end
  end
end
