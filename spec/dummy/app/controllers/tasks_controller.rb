class TasksController < ApplicationController
  def index
    @tasks = LiquidQueries::Collection.new(collection: Task.all)
  end

private

  def liquid_assigns
    {"tasks" => @tasks}
  end
end
