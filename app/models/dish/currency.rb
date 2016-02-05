module Dish
	class Currency < Spree::Base
		validates_presence_of :name
	end
end