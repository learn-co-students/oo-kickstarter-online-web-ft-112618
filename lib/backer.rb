class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    instance = self
    @backed_projects << project
    if project.backers.length == 0
      project.add_backer(instance)
    end
  end


end
