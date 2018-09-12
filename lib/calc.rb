require 'stringio'
require '../lib/sales_row'
require '../lib/game'
require '../lib/book'

class Calc
  BASIC_FEE = 108

  def initialize
    @sales_rows = []
  end

  def add(item, quantity)
    row = SalesRow.new(item, quantity)
    @sales_rows << row
  end

  def total_cost
    @sales_rows.sum(&:cost)
  end

  def sale_fee(row)
    (row.item.selling_price * row.item.category.sale_fee * 1.08).floor
  end

  def break_even_point(row)
    (row.item.purchase_price + BASIC_FEE + row.item.category.category_fee + sale_fee(row)).floor
  end

  def print_sales
    io = StringIO.new
    @sales_rows.each do |row|
      io.puts format_sales_row(row)
      io.puts "想定売値 #{row.item.selling_price}"
      io.puts "基本成約料（小口出品） #{BASIC_FEE}"
      io.puts "カテゴリー成約料 #{row.item.category.category_fee}"
      io.puts "販売手数料 #{sale_fee(row)}"
      io.puts "損益分岐点（利益0円） #{break_even_point(row)}"
      io.puts "仕入れ金額小計 #{row.cost}"
      io.puts
    end
    io.puts "仕入れ金額合計 #{total_cost}"
    puts io.string
  end

  def format_sales_row(row)
    "#{row.item.category.classification} #{row.item.name} #{row.quantity} #{row.item.purchase_price}"
  end
end
