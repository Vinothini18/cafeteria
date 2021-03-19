class OrdersController<ApplicationController
    
    def index
        @orders=Order.where(user_id:current_user.id)
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
            item_quantity:item_quantity,
            user_id: current_user.id,
        )
        redirect_to orders_path
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
