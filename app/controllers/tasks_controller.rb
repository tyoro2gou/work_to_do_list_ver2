class TasksController < ApplicationController
  def index
    @tasks = Task.where(user_id: current_user.id)
  end

  def new
    @task = Task.new
    @task.build_daytime
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render new_task_path
    end
  end
  private
  def task_params
    params.require(:task).permit(:name, :adress, :remark, :work_id, daytime_attributes: [:month_id, :day_id, :hour_id, :minute_id]).merge(user_id: current_user.id)
  end
end
