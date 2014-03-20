class TipoDocumento < ActiveRecord::Base
  attr_accessible :nombre
  has_many :documento
  has_many :documento_anexo

  def to_s
  	"#{ self.nombre }"
  end
end
