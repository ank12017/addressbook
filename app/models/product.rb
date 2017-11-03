class Product < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	has_many :avatars, as: :avatarable
	belongs_to :order, optional: true
 	has_many :order_items
  	accepts_nested_attributes_for :avatars, reject_if: :all_blank, allow_destroy: true, update_only: true
end
