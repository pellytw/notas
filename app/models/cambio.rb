class Cambio < ActiveRecord::Base
  attr_accessible :descripcion, :documento_id, :user_id

  belongs_to :documento
  belongs_to :user

  def to_s
  	"#{self.user} - #{self.created_at} - campos modificados: #{self.descripcion}"
  end 

end
