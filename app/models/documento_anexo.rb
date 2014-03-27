class DocumentoAnexo < ActiveRecord::Base
  attr_accessible :anio, :documento_id, :fecha, :numero, :tipo_documento_id
  belongs_to :tipo_documento
  belongs_to :documento
end
