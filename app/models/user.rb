class User < ApplicationRecord
  has_many :characters
  def to_s
    pseudonym
  end
end
