class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable and :omniauthable, 
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable, :timeoutable, :registerable

  def title
    "#{self.email}"
  end
end
