class Item
  attr_reader :category, :name, :purchase_price, :selling_price

  def initialize(category, name, purchase_price, selling_price)
    @category = category
    @name = name
    @purchase_price = purchase_price
    @selling_price = selling_price
  end
end
