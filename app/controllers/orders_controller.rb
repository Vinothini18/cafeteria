class OrdersController<ApplicationController
    def index
        render plain:Order.all.to_a
    end

end
