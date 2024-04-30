class TestTaskLogic
  def self.add(num_string)
    return 0 if num_string.empty?
    numbers = num_string.split(',').map(&:to_i) # sum of number in string
    numbers.sum
  end
end
