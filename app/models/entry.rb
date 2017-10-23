class Entry < ApplicationRecord
	validates_presence_of :name, :phone, :email
end
