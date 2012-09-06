class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_var

  private
  def set_var
  	@lojas_em_destaque = LojasEmDestaque.all
  	@footer = Footer.first!
    @imagem = BannerImage.all
  end

  
end
