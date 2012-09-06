class LazersController < InheritedResources::Base
	def index
		@lazer = Lazer.first!
		@eventos = Event.order('created_at DESC').limit(6)
	end
end
