class Crypto < ApplicationRecord
  def amount_held
    self[:amount_held] / 100000000.0
  end

  def amount_held=(value)
    self[:amount_held] = value * 100000000.0
  end

  def amount_deposited
    self[:amount_deposited] / 100.0
  end

  def amount_deposited=(value)
    self[:amount_deposited] = value * 100
  end

  def amount_withdrawn
    self[:amount_deposited] / 100.0
  end

  def amount_withdrawn=(value)
    self[:amount_deposited] = value * 100
  end
end
