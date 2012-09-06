class OShoppingsController < InheritedResources::Base
	def index
		@shopping = OShopping.first!
	end
end

