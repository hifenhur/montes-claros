class NewslettersController < InheritedResources::Base
	def create
    @newsletter = Newsletter.new(params[:newsletter])

    respond_to do |format|
      if @newsletter.save
        format.js
      end
    end
  end
end
