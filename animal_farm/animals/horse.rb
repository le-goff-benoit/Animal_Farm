require '../modules/runs', '../modules/sleeps'

class Horse

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def self.herd_of_horses
    [Horse.new, Horse.new, Horse.new]
  end

end
