class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def destroy
    @task.destroy
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(title: params['task'][:title], details: params['task'][:details])
    @task.save
    redirect_to tasks_path(@task)
  end

  def update
    @task.update(task_params)

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
