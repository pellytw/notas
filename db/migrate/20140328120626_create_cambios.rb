class CreateCambios < ActiveRecord::Migration
  def change
    create_table :cambios do |t|
      t.integer :documento_id
      t.integer :user_id
      t.string :descripcion

      t.timestamps
    end
  end
end
