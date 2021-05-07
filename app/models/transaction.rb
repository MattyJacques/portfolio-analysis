# frozen_string_literal: true
class Transaction < ApplicationRecord

  enum type: { buy: 0, sell: 1, convert: 2, send: 3, receive: 4, earn: 5, income: 6  }

  t.string :asset

  def quantity
    self[:quantity] / 100000000.0
  end

  def quantity=(value)
    self[:quantity] = value * 100000000.0
  end

  def price
    self[:price] / 100.0
  end

  def price=(value)
    self[:price] = value * 100
  end

  def subtotal
    self[:subtotal] / 100.0
  end

  def subtotal=(value)
    self[:subtotal] = value * 100
  end

  def fees
    self[:fees] / 100.0
  end

  def fees=(value)
    self[:feees] = value * 100
  end

  def total
    self[:total] / 100.0
  end

  def total=(value)
    self[:total] = value * 100
  end

end
