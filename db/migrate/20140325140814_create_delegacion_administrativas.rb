class CreateDelegacionAdministrativas < ActiveRecord::Migration
  def change
    create_table :delegacion_administrativas do |t|
      t.string :nombre
      t.integer :localidad_id

      t.timestamps
    end
  end
end
