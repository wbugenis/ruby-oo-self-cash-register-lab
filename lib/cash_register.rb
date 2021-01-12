class CashRegister

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    attr_accessor :total, :discount, :items, :last_item_price

    def add_item(item, price, quantity = 1)
        self.last_item_price = price * quantity
        quantity.times do
            self.items << item
        end
        self.total += price * quantity
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
        self.items.pop
        self.total -= self.last_item_price
    end

end
