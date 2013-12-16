class User < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: { message: "You f'd up, nameless fellow" }
end
