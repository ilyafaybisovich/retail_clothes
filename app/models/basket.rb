class Basket < ActiveRecord::Base
  has_many :items

  def total_cost
    if !self.items.empty?
      self.items.inject(0) {|sum, item| sum += item.product.price }
    end
  end
end
