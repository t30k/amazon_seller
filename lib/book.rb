require '../lib/item'
require '../lib/category'

class Book < Item
  attr_reader :name, :purchase_price, :selling_price

  CLASSIFICATION = "書籍、雑誌、その他出版物"
  SALE_FEE = 0.15
  CATEGORY_FEE = 60
  SHIPPING_FEE = 257

  def initialize(name, purchase_price, selling_price)
    super(Category.new(CLASSIFICATION, SALE_FEE, CATEGORY_FEE, SHIPPING_FEE), name, purchase_price, selling_price)
  end
end
