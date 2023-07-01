# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new; end

  def create
    Task.create!(
      title: params[:title],
      details: params[:details]
    )
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(
      title: params[:title],
      details: params[:details]
    )
  end

  def destroy
    Task.find(params[:id])
  end
end
