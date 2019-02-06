class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtBlacklist


  def jwt_payload
    { first_name: first_name,
      last_name: last_name,
      email: email,
      id: id,
      position: position
    }
  end

end
