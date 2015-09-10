class PairingSession < ActiveRecord::Base
  belongs_to :bootcoders, class_name: "Bootcoder"
  belongs_to :pair, class_name: "Bootcoder"
end
