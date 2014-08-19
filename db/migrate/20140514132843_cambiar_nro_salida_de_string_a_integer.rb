class CambiarNroSalidaDeStringAInteger < ActiveRecord::Migration
  def up
   change_column :documentos, :nro_salida, :integer
  end

  def down
   change_column :documentos, :nro_salida, :string
  end
end
