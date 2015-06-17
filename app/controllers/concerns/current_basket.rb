module CurrentBasket
  extend ActiveSupport::Concern

  private

  def set_basket
    @basket = Basket.find session[:basket_id]  
  rescue
    @basket = Basket.create
    session[:basket_id] = @basket.id
  end
end