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

  def remove(element)
    return if empty?

    for i in 0..size - 1
      next unless elements[i] == element

      elements[i] = elements[size - 1]
      self.size -= 1
      return
    end
  end
end

# rubocop:enable Style/For
# rubocop:enable Style/AccessModifierDeclarations
# rubocop:enable Style/NumericPredicate
