class Order < ApplicationRecord

	has_many :line_itmes
	belongs_to :user, optional: true

	serialize :order_items, Hash

end
