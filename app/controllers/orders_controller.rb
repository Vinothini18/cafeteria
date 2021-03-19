class OrdersController<ApplicationController
    def index
        current_user
        render "index"
        #render plain:Order.all.map {|order| order.to_pleasant_string}.join("\n")
    end
    def show
        id=params[:id]
        order=Order.find(id)
        render plain:order.to_pleasant_string
    end

    def create
        item_name=params[:item_name]
        item_quantity=params[:item_quantity]
        item_price =params[:item_price]
        new_order=Order.create!(
            item_name:item_name,
            item_price:item_price,
            item_quantity:item_quantity
        )
        response_text="New Order is created"
        render plain:response_text
    end
    def update
        item_name=params[:item_name]
        item_quantity=params[:item_quantity]
        item_price =params[:item_price]
        order.save!
        redirect_to orders_path
    end
    def destroy
        id=params[:id]
        order=Order.find(id)
        order.destroy
        redirect_to orders_path
    end
end
