class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validate :password_regex

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 private

  def password_regex
      return if password.blank? || password =~ /\A(?=.*\d)(?=.*[A-Z])(?=.*\W)[^ ]{8,}\z/ 
      errors.add :password, 'Password should have more than 8 characters including 1 uppercase letter, 1 number, 1 special character'
   end
end
