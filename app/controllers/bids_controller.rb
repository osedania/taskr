class BidsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    if Bid.exists?(user: current_user)
      redirect_to task_path(@task)
      flash[:notice] = 'Sorry you can only make one offer. Please update your current offer if you need to change your bid'
    elsif bid_params[:quote] == ''
      flash[:notice] = 'Please quote an amount'
      redirect_to task_path(@task)
    elsif bid_params[:terms_of_service] == '0'
      flash[:notice] = 'Please confirm you have read the Terms and Conditions'
      redirect_to task_path(@task)
    else
      @bid = @task.bids.new(bid_params)
      @bid.user = current_user
      @bid.save
      redirect_to task_path(@task)
      flash[:notice] = 'Offer Made!'
    end
  end

  def bid_terms_doc
    render layout: 'terms.html.haml'
  end

  private

  def bid_params
    params.require(:bid).permit(:quote, :task_id, :terms_of_service)
  end
end
