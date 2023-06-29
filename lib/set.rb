# rubocop:disable Style/For
# rubocop:disable Style/IfUnlessModifier
# rubocop:disable Style/AccessModifierDeclarations

class Set
  private attr_accessor :is_empty, :elements

  attr_accessor :size

  private :size=

  def initialize
    self.is_empty = true
    self.size = 0
    self.elements = []
  end

  def empty?
    is_empty
  end

  def add(element)
    self.is_empty = false
    elements[size] = element
    self.size += 1
  end

  def contains?(element)
    for i in 0..size - 1
      if elements[i] == element
        return true
      end
    end
    false
  end
end

# rubocop:enable Style/For
# rubocop:enable Style/IfUnlessModifier
# rubocop:enable Style/AccessModifierDeclarations
