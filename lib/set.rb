# rubocop:disable Style/For
# rubocop:disable Style/AccessModifierDeclarations
# rubocop:disable Style/NumericPredicate

class Set
  private attr_accessor :elements

  attr_accessor :size

  private :size=

  def initialize
    self.size = 0
    self.elements = []
  end

  def empty?
    size == 0
  end

  def add(element)
    elements[size] = element
    self.size += 1
  end

  def contains?(element)
    for i in 0..size - 1
      return true if elements[i] == element
    end
    false
  end

  def remove(_element)
    return if empty?

    self.size -= 1
  end
end

# rubocop:enable Style/For
# rubocop:enable Style/AccessModifierDeclarations
# rubocop:enable Style/NumericPredicate
