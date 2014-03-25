class Documento < ActiveRecord::Base
  attr_accessible :anio, :asunto, :autorizado, :destinatario, :fecha_documento, :fecha_recepcion, :fecha_salida, :iniciado_por, :motivo, :nombres_y_apellidos, :nro_documento, :nro_salida, :observacion, :procedencia, :se_encuentra_en, :sigla, :tipo_documento_id
end
