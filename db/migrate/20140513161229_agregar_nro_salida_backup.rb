class AgregarNroSalidaBackup < ActiveRecord::Migration
  def up
  	add_column :documentos, :nro_salida_bck, :string
  end
  def down
  	remove_column :documentos, :nro_salida_bck, :string
  end
end
