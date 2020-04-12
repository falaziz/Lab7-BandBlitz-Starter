class User < ApplicationRecord
  belongs_to :band
  has_secure_password
  
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email
  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, message: "is not a valid format"
  
  def proper_name
    "#{first_name} #{last_name}"
  end
  
  
end
