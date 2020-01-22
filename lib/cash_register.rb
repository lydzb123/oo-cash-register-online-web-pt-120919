class CashRegister

  attr_accessor :total, :discount, :list

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    if quantity == 1
      @list << item
    else
      i = 0
      while i < quantity do
        @list << item
        i += 1
      end
    end
  end

  def void_last_transaction
    @total
    list[-1].
  end

  def apply_discount

    if discount == 0
      return "There is no discount to apply."
    else
      @total *= (100 - @discount)/100
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @list[-1]
    
    if @list == []
      @total = 0
    end
  end

end
