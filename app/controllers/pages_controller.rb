class PagesController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
  :dashboard
  def index
  end

  def create
    @project = Project.create(name: params[:name], description: params[:description], firstdate: params[:firstdate], lastdate: params[:lastdate], status: params[:status] )
  end

  def dashboard
    @project = Project.new
    if params[:status].present?
      @projects = Project.where('status = ?', params[:status])
    else
      @projects = Project.all
    end
  end
end
