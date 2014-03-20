class Localidad < ActiveRecord::Base
  attr_accessible :nombre, :region_id
  belongs_to :region
  has_many :documento

  def to_s
  	"#{ self.nombre }"
  end
end
