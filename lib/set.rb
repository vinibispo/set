class Set
  EMPTY_SIZE = 0

  private_constant :EMPTY_SIZE
  private attr_accessor :elements

  attr_accessor :size

  private :size=

  def initialize
    self.size = EMPTY_SIZE
    self.elements = Hash.new(false)
  end

  def empty?
    size == EMPTY_SIZE
  end

  def add(element)
    return if contains?(element)

    elements[element] = true
    self.size += 1
  end

  def contains?(element)
    elements[element]
  end

  def remove(element)
    return if empty? || !contains?(element)

    elements[element] = false
    self.size -= 1
  end
end
