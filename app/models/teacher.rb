class Teacher < ActiveRecord::Base
  # before_action :set_session

  has_many :parents

  has_secure_password

  validates :password, :length =>{:minimum =>7}
  validates_confirmation_of :password


  session[:email] = @current_user.id
  User.find(session[:user_id])

  # def session
  #   @current_user.id = Teacher.find_by(email: params[:email].downcase)
  #   if teacher && teacher.authenticate(params[:session][:password])
  # end
end
