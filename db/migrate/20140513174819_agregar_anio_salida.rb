class AgregarAnioSalida < ActiveRecord::Migration
  def up
  	add_column :documentos, :anio_salida, :string
  end
  def down
  	remove_column :documentos, :anio_salida, :string
  end
end

