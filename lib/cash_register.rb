class CashRegister
  attr_accessor :total ,:discount, :items, :last_transaction

  def initialize (discount=0,items=[])
    @total = 0
    @discount = discount
    @items = items
  end

  def add_item(title,price,quantity=1)
    quantity.times {self.items.push(title)}
    self.last_transaction = price *quantity
    self.total += self.last_transaction
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= self.total * self.discount/100
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
    self.total.to_f
  end

end
