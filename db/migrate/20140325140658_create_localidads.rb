class CreateLocalidads < ActiveRecord::Migration
  def change
    create_table :localidads do |t|
      t.string :nombre
      t.integer :region_id

      t.timestamps
    end
  end
end
