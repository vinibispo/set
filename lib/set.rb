# rubocop:disable Style/For
# rubocop:disable Style/AccessModifierDeclarations
# rubocop:disable Style/NumericPredicate

class Set
  NON_VALID_INDEX = -1

  private_constant :NON_VALID_INDEX
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
    index = find_index(element)

    index != NON_VALID_INDEX
  end

  def remove(element)
    return if empty?

    index = find_index(element)

    return if index == NON_VALID_INDEX

    elements[index] = elements[size - 1]
    self.size -= 1
  end

  private

  def find_index(element)
    for i in 0..size - 1
      return i if elements[i] == element
    end
    NON_VALID_INDEX
  end
end

# rubocop:enable Style/For
# rubocop:enable Style/AccessModifierDeclarations
# rubocop:enable Style/NumericPredicate
