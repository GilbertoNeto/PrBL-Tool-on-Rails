class FindersController < ApplicationController

before_action :index

def index

  @q = Project.search(params[:q])

  # redirect_to finders_project_status_path(@projects)

end

def projects_status

  @q = Project.search(params[:q])
  @projects = @q.result

end


def projects_institution
  @q = Project.search(params[:q])
  @projects = @q.result
end


end
