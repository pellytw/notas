class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.string :nro_documento
      t.string :nro_salida
      t.string :asunto
      t.boolean :autorizado
      t.text :observacion
      t.string :sigla
      t.integer :anio
      t.date :fecha_recepcion
      t.date :fecha_documento
      t.date :fecha_salida
      t.integer :tipo_documento_id
      t.integer :procedencia
      t.string :nombres_y_apellidos
      t.string :motivo
      t.integer :destinatario
      t.integer :iniciado_por
      t.integer :se_encuentra_en

      t.timestamps
    end
  end
end
