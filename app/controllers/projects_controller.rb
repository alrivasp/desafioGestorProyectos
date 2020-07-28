class ProjectsController < ApplicationController
  http_basic_authenticate_with name:"desafiovamoscontodo", password:"XAHTJEAS23123%23", only: :dashboard

  def index
  end

  def create
    @project = Project.create(name: params[:name], description: params[:description], start_date: params[:start_date], end_date: params[:end_date], state: params[:state])
  end

  def dashboard
      if params[:state_filter].present?
        @project = Project.filter_state(params[:state_filter])
      else
        @project = Project.all
      end
  end
end
