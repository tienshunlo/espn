class Message < ActiveRecord::Base
	belongs_to :user
	has_many :commet
end
