class TasksController < ApplicationController
  
  def create
    user = User.find_by(:id => params[:user_id])

    if user.nil?
      info = { :error => "User not found" }
      render(:status => 404, :json => info)
    else
      task = user.tasks.new(task_params)

      if task.save
        render(:json => task)
      else
        info = { :error => "Could not create task" }
        render(:status => 500, :json => info)
      end
    end
  end


  def index
    user = User.find_by(:id => params[:user_id])

    if user.nil?
      info = { :error => "User not found" }
      render(:status => 404, :json => info)
    else
      render(:json => user.tasks)
    end
  end


  def complete
    user = User.find_by(:id => params[:user_id])

    if user.nil?
      info = { :error => "User not found" }
      render(:status => 404, :json => info)
    else
      task = user.tasks.find_by(:id => params[:id])

      if task.nil?
        info = { :error => "Task not found" }
        render(:status => 404, :json => info)
      else

        task.completed = Time.now
        task.save

        render(:json => task)
      end
    end
  end



  def show
    user = User.find_by(:id => params[:user_id])

    if user.nil?
      info = { :error => "User not found" }
      render(:status => 404, :json => info)
    else
      task = user.tasks.find_by(:id => params[:id])

      if task.nil?
        info = { :error => "Task not found" }
        render(:status => 404, :json => info)
      else
        render(:json => task)
      end
    end
  end



  def destroy
    user = User.find_by(:id => params[:user_id])

    if user.nil?
      info = { :error => "User not found" }
      render(:status => 404, :json => info)
    else
      task = user.tasks.find_by(:id => params[:id])

      if task.nil?
        info = { :error => "Task not found" }
        render(:status => 404, :json => info)
      else
        task.destroy
        render(:json => task)
      end
    end
  end


  private

  def task_params
    return params.require(:task).permit(:name)
  end
end
