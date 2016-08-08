class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :lists
  has_many :tasks, through: :lists


  validates :username, presence: true
  validates :password, length: {minimum:  6}

  has_secure_password

end
