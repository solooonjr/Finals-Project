class Inventory < ApplicationRecord
        has_many :orders

        validates :product_name, presence: true
        validates :price, numericality: true

        validate :check_if_enough_stock
        
        

        def check_if_enough_stock
            if committed.to_i > in_stock.to_i then
                errors.add(:committed, "Not enough stock")
            end
        end

        def check_input
            if in_stock.to_i.nil? && committed.to_i.nil? && ordered.to_i.nil? then
                    errors.add(:in_stock, :committed, :ordered, "Must not be blank please input zero if none")
            end
        end

        
end
