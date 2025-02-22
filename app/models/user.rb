class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :characters
  def to_s
    pseudonym
  end
  
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    pseudonym = conditions.delete(:pseudonym)  # Correction : assignation à pseudonym
    if pseudonym
      where(conditions).where(["pseudonym = ?", pseudonym]).first
    else
      where(conditions).first
    end
  end
end
