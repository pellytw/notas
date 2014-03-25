class CreateLocalidades < ActiveRecord::Migration
  def change
    create_table :localidades do |t|
      t.string :nombre
      t.integer :region_id

      t.timestamps
    end
  end
end
