class OrdersController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    order = Order.create!(event: event, event_sku: event.sku, amount: event.price, state: 'paid', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: event.sku,
        images: [event.photo],
        amount: event.price_cents,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: "https://www.frontrow.host/orders/#{order.id}",
      cancel_url: "https://www.frontrow.host/orders/#{order.id}"
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
