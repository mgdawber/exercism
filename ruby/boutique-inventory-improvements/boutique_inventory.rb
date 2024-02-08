# frozen_string_literal: true

require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { |item| OpenStruct.new(item) }
  end

  def item_names
    @items.map(&:name).sort
  end

  def cheap
    @items.select { |item| item[:price] < 30.00 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.find { |item| item[:name] == name }[:quantity_by_size]
  end

  def total_stock
    @items.sum { |item| item[:quantity_by_size].values.sum }
  end
end
