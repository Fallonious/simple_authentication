class Teacher < ActiveRecord::Base
  has_many :parents
  has_secure_password

  validates :password, :length =>{:minimum =>7}
  validates_confirmation_of :password
end
