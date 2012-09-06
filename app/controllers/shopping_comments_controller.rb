class ShoppingCommentsController < InheritedResources::Base
	def create
	@o_shopping = OShopping.find(params[:o_shopping_id])
	@shopping_comment = @o_shopping.shopping_comments.create(params[:shopping_comment])

    respond_to do |format|
      if @shopping_comment.save
        format.js
      else
        format.html { redirect_to sobre_path }
      end
    end
  end
end
