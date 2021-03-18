class Order<ActiveRecord::Base
    belongs_to:user
    def to_pleasant_string
        "#{id}. #{item_name} #{item_quantity} #{item_price}"
    end
end
