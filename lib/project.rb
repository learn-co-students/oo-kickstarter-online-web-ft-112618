class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    instance = self
    if backer.backed_projects.length == 0
      backer.back_project(instance)
    end
    @backers << backer
  end
end
