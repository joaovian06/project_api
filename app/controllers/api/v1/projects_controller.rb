class Api::V1::ProjectsController < ApplicationController
  include Response
  include ExceptionHandler

  def index
    @projects = Project.all
    json_response(@projects)
  end

  def show
    @project = Project.find_by(id: params[:id])

    if @project.present?
      json_response(@project)
    else
      json_response(@project, :not_found)
    end
  end

  def create
  end

  def update
  end

  def destroy
  end

end
