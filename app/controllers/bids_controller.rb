class BidsController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    if Bid.exists?(user: current_user)
      redirect_to task_path(@task)
      flash[:notice] = 'Sorry you can only make one offer. Please update your current offer if you need to change your bid'
    else
      @bid = @task.bids.new(bid_params)
      @bid.user = current_user
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
