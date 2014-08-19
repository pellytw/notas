class AgregarSiglaYObservacionADocumentoAnexo < ActiveRecord::Migration
  def up
  	add_column :documento_anexos, :sigla, :string
  	add_column :documento_anexos, :observacion, :text  	
  end

  def down
  	remove_column :documento_anexos, :sigla
  	remove_column :documento_anexos, :observacion  	
  end
end
