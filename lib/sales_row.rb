class SalesRow
  attr_reader :item, :price, :quantity

  def initialize(item, quantity)
    @item = item
    @quantity = quantity
  end

  def cost
    item.purchase_price * quantity
  end
end
