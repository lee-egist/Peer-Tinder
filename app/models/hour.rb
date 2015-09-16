class Hour < ActiveRecord::Base
  validates :hrf, presence: true, length: { maximum: 2}
  validates :suffix, presence: true, length: { maximum: 2}
end
