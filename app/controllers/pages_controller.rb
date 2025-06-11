class PagesController < ApplicationController
  def home
    @projects = Project.all
    @projects.each do|project|
      @myproject = project
    end
  end
end
