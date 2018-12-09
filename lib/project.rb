require 'pry'

class Project
  attr_accessor :title, :backers

  # module InstanceProjectBackers
  #   BACKERS = [ ]

  def initialize(title)
    @title = title
    @backers = [ ]
  end

  def add_backer(backer)
    #binding.pry
      self.backers << backer
      backer.backed_projects << self
    # BACKERS << name
    # @backers << name
  end

end
