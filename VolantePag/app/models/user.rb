class User < ActiveRecord::Base
  has_secure_password

  validates :correo, presence:  { message: 'No puede dejarse vacío' },uniqueness: { message: 'ya existe!  '}, email:  {message: "Invalido, Utilizar @/gmail/hotmail/labreferencia/.com, ejemplo: example@labreferencia.com" }
  validates :codigo_empleado,uniqueness: { message: 'ya existe!  '}, presence: { message: 'No puede dejarse vacío' }
  validates :password, presence: { message: 'No puede dejarse vacío'},length: {minimum: 8, maximum: 25, :message =>", El Minimo de caracteres permitido es 8"}
  validates :tipo, presence: {message: 'No puede dejarse vacio'}

  def admin?
    self.tipo =='admin'
  end
end
