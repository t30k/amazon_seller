class Category
  attr_reader :classification, :sale_fee, :category_fee, :shipping_fee

  def initialize(classification, sale_fee, category_fee, shipping_fee)
    @classification = classification
    @sale_fee = sale_fee
    @category_fee = category_fee
    @shipping_fee = shipping_fee
  end
end
