require "./flies"

class Duck

  def speak!
    'Quak, Quak'
  end

  def self.brace_of_duck
    [Duck.new, Duck.new, Duck.new]
  end

end
