class TasksController < ApplicationController

  def new
    render 'new'
    @budget = ["$100 - $200", "$201 - $400", "$401 - $800", "$801 - $1500" ]
  end

end
