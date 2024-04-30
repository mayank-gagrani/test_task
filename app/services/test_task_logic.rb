class TestTaskLogic
  def self.add(num_string)
    return 0 if num_string.empty?
    numbers = num_string.split(',').map(&:to_i) # sum of number in string

    #for checking negative numbers
    if num_string.include?("-")
      numbers = num_string.split(',').map(&:to_i).select { |number| number < 0 }.join(", ")
      return "negative numbers not allowed #{numbers}"
    end

    numbers = num_string.gsub('\n', ",").split(',').map(&:to_i) if num_string.include?('\n') #sum of number when \n also present

    return "invalid" if num_string.split(',').include?('\n') #for invalid string
    numbers.sum
  end
end
