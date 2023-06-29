class Set
  def initialize
    self.is_empty = true
    self.size = 0
    self.is_contained = false
  end

  def empty?
    is_empty
  end

  def add(_element)
    self.is_empty = false
    self.size += 1
    self.is_contained = true
  end

  def contains?(_element)
    is_contained
  end

  private attr_accessor :is_empty, :is_contained

  attr_accessor :size

  private :size=
end
