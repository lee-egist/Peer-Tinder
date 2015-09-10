class Bootcoder < ActiveRecord::Base
  validates :handle, presence: true, length: { in: 6..50 }
  validates :email, presence: true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\z/, message: "%{value} must be a valid email" }
  validates :phone, presence: true, format: { with: /\A[1(-]*[0-9]{3}[)]*[0-9]{3}[-]*[0-9]{4}\z/, message: " %{value} must be in the format (111)222-3333 | 1112223333" }

  has_secure_password

end
