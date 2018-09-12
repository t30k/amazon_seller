require '../lib/item'
require '../lib/category'

class Game < Item
  attr_reader :name, :purchase_price, :selling_price

  CLASSIFICATION = "TVゲーム"
  SALE_FEE = 0.15
  CATEGORY_FEE = 0
  SHIPPING_FEE = 350

  def initialize(name, purchase_price, selling_price)
    super(Category.new(CLASSIFICATION, SALE_FEE, CATEGORY_FEE, SHIPPING_FEE), name, purchase_price, selling_price)
  end
end
