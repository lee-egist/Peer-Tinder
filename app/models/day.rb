class Day < ActiveRecord::Base
   validates :name, presence: true, length: {in: 6..9 }
end
