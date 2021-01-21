class CashRegister
    attr_accessor :total, :discount, :item, :last_transaction
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item = []
    end

    def add_item(item, price, quantity = 1)
        @last_transaction = price * quantity
        @total += price * quantity
        quantity.times do 
            @item << item 
        end
    end
    
    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else 
        @total = @total- (@total *  @discount/100)
        return "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        self.item
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end

end
