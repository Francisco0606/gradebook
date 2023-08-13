class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def ta?
    return account_id == 0
  end

  def teacher?
    return account_id == 1
  end

  def non_signed_in?
    return account_id == 2
  end

end
