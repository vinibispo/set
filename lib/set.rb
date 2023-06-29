class Set
  def initialize
    self.is_empty = true
    self.size = 0
  end

  def empty?
    is_empty
  end

  def add(_element)
    self.is_empty = false
    self.size += 1
  end

  def contains?(_element)
    false
  end

  private attr_accessor :is_empty

  attr_accessor :size

  private :size=
end
