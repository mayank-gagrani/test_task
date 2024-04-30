class TestTaskLogic
  def self.add(num_string)
    return 0 if num_string.empty?
    numbers = num_string.split(',').map(&:to_i) # sum of number in string
    numbers.delete_if {|x| x >= 1000 }


    #for checking negative numbers
    if num_string.include?("-")
      numbers = num_string.split(',').map(&:to_i).select { |number| number < 0 }.join(", ")
      return "negative numbers not allowed #{numbers}"
    end

    numbers = num_string.gsub('\n', ",").split(',').map(&:to_i) if num_string.include?('\n') #sum of number when \n also present

    numbers = num_string.split("\;").map {|x| x[/\d+/]}.map(&:to_i) if num_string.start_with?("//") # code for delimeter
    numbers = num_string.split("*").map {|x| x[/\d+/]}.map(&:to_i) if num_string.include?('*')

    numbers = num_string.gsub(/[!@#%&*]/,',').split(",").map {|x| x[/\d+/]}.map(&:to_i) if num_string.include?('[*][%]')

    return "invalid" if num_string.split(',').include?('\n') #for invalid string
    
    numbers.sum
  end
end
