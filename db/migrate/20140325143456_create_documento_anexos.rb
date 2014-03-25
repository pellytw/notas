class CreateDocumentoAnexos < ActiveRecord::Migration
  def change
    create_table :documento_anexos do |t|
      t.string :numero
      t.integer :anio
      t.date :fecha
      t.integer :tipo_documento_id
      t.integer :documento_id

      t.timestamps
    end
  end
end
