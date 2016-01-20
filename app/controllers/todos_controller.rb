class TodosController < ApplicationController
  def index


    startDate = todo_params[:start]
    endDate = todo_params[:end]
    priority = todo_params[:priority]
    description = todo_params[:description]
    status = todo_params[:status]



    @db = CouchRest.database(ENV['DB'])
    @response = @db.save_doc({

      start: startDate,
      end: endDate,
      priority: priority,
      description: description,
      status: status
    })

  #  @todos = TodoItems.new(test)
  #  @todos.save


  end

  def todo_params
    #params.require(:todo).permit(:start).permit(:end).permit(:priority).permit(:description)
    params.permit(:start, :end, :priority, :description, :status)
  end


end
