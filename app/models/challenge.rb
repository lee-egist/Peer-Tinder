class Challenge < ActiveRecord::Base
  validates :name, presence: true, length: { in: 10..100 }, uniqueness: true
  validates :time_length, default: 1

end
