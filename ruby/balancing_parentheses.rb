def balancing_parentheses(string)
  # type your code in here
  missing = 0
  openings = 0

  string.chars.each do |char|
    if char == '('
      openings+= 1
      next
    end

    if openings > 0
      openings -= 1
    else
      missing += 1
    end
  end

  missing + openings
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts balancing_parentheses('(()())')

  puts

  puts "Expecting: 2"
  puts balancing_parentheses('()))')

  puts

  puts "Expecting: 1"
  puts balancing_parentheses(')')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
