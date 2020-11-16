class User < ApplicationRecord
  # this tells the user model that the password_digests needs to be encripted
  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email
end
