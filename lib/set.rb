class Set
  def initialize
    self.is_empty = true
  end

  def empty?
    is_empty
  end

  def add(_element)
    self.is_empty = false
  end

  private attr_accessor :is_empty
end
