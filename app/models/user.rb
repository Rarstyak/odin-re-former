class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 4..12}
  validates :email,    presence: true, uniqueness: true, format: { with: /\A(\S+)@(.+)\.(\S+)\z/ }
  validates :password, presence: true, length: { in: 6..16 }
end
