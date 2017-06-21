class ChargesController < ApplicationController

  def create
    # Amount in cents
    @bid = Bid.find(params[:bid_id])
    @amount = @bid.quote*100
    @task = @bid.task

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: "Taskr charge for #{@bid.task.name}",
      currency: 'usd'
    )

    @task.status = "Paid"
    @task.save

    flash[:notice] = 'You have now paid for this task.'
    redirect_to task_bid_path(@task, @bid)

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end
end
