class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :barcode

      t.timestamps
    end
  end
end
