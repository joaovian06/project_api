class Api::V1::ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: @projects, status: :ok
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

end
