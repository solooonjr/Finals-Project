class Order < ApplicationRecord
       belongs_to :inventory

       validates :customer_name, presence: true
 
       validate :check_quantity
       def check_quantity 
              if quantity.to_i <= 0 then
                     errors.add(:committed, "Order cannot be made with 0 quantity")
              end
       end
end
