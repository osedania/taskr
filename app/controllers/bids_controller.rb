class Requesters::BidsController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    if Bid.exists?(contractor_id: current_contractor.id)
      redirect_to task_path(@task)
      flash[:notice] = 'Sorry you can only make an offer. Please update your offer if you need to change your bid'
    else
      @bid = @task.bids.new(bid_params)
      @bid.contractor_id = current_contractor.id
      if @bid.save
        redirect_to task_path(@task)
        flash[:notice] = 'Offer Made!'
      else
        flash[:notice] = 'Please quote an amount'
        redirect_to task_path(@task)
      end
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:quote, :task_id)
  end

end
