class TasksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    task = Task.new(params.require(:task).permit(:name, :description))
    task.save!
    redirect_to tasks_url, notice: "タスク#{task.name}を追加しました。"
  end

end
