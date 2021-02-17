def report(input)
  array = input.downcase.delete(' ').split(',')
  @output = array.length == 0 ? 'No results given' : []
  grade_counter = iterate_over_grades(array)
  create_report(grade_counter)
  @output = @output.join("\n") unless @output == 'No results given'
  @output
end

private

def create_report(grade_counter)
  grade_counter.each do |key, value|
    if value > 0
      @output.push("#{key.capitalize}: #{value}")
    end
  end
end

def iterate_over_grades(array)
  counter = {'green' => 0, 'amber' => 0, 'red' => 0, 'uncounted' => 0}
  array.map do |grade|
    if grade == 'green' || grade == 'amber' || grade == 'red'
      counter[grade] += 1
    else
      counter['uncounted'] += 1
    end
  end
  counter
end

#
#
#   green_calculation(array)
#   amber_calculation(array)
#   red_calculation(array)
#   uncounted_calculation(array)
#
#
#
#
#
# private
#
# def green_calculation(array)
#   green_count = array.count("green")
#   @valid_count += green_count
#   green_output = "Green: #{green_count}"
#   @output.push(green_output) if green_count >= 1
# end
#
# def amber_calculation(array)
#   amber_count = array.count("amber")
#   @valid_count += amber_count
#   amber_output = "Amber: #{amber_count}"
#   @output.push(amber_output) if amber_count >= 1
# end
#
# def red_calculation(array)
#   red_count = array.count("red")
#   @valid_count += red_count
#   red_output = "Red: #{red_count}"
#   @output.push(red_output) if red_count >= 1
# end
#
# def uncounted_calculation(array)
#   uncounted_count = array.length - @valid_count
#   uncounted_output = "Uncounted: #{uncounted_count}"
#   @output.push(uncounted_output) if uncounted_count >= 1
# end
