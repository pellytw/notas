class AgregarNroAnioADocumento < ActiveRecord::Migration
  def up
  	add_column :documentos, :nro_anio_salida, :integer	
  end

  def down
  	remove_column :documentos, :nro_anio_salida	
  end
end
