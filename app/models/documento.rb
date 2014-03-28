class Documento < ActiveRecord::Base
  attr_accessible :anio, :asunto, :autorizado, :destinatario, :fecha_documento, :fecha_recepcion, :fecha_salida, :iniciado_por, :localidad_id, :motivo, :nombres_y_apellidos, :nro_documento, :nro_salida, :observacion, :procedencia, :se_encuentra_en, :sigla, :tipo_documento_id
  belongs_to :tipo_documento
  belongs_to :localidad

  has_many :documento_anexo, :dependent => :destroy
  attr_accessible :documento_anexo_attributes
  accepts_nested_attributes_for :documento_anexo

  validates :fecha_recepcion, :presence => true
  validates :fecha_documento, :presence => true
  validates :iniciado_por, :presence => true
  validates :tipo_documento_id, :presence => true
  validates :nombres_y_apellidos, :presence => true
  validates :anio, :presence => true
  validates :procedencia, :presence => true
  validates :localidad_id, :presence => true

  has_many :cambios


end
