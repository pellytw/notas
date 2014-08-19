class AgregarNroSalidaBckADocumento < ActiveRecord::Migration
  def up
  	add_column :documentos, :nro_salida_bck, :integer	
  end

  def down
  	remove_column :documentos, :nro_salida_bck	
  end
end
