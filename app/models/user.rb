class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  def user?
    return self.type == nil
  end

	def admin?
		return self.type == "Admin"
	end

	def manager?
		return self.type == "Manager"
	end

		def clinician?
		return self.type == "Clinician"
	end

	def self.types
		["Admin", "Manager", "User", "Clinician"]
	end

end
