class OrdersController<ApplicationController
    def index
        render plain:Order.all.map {|order| order.to_pleasant_string}.join("\n")
    end

end
