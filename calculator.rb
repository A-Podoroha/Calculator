def calculate(operation, a, b)
  case operation
  when "+"
    return a+b
  when "-"
    return a-b
  when "*"
    return a*b
  when "/"
    res = a.to_f/b.to_f
    if res.is_a? Integer
      return res.to_i
    else
      return res
    end
  else
    puts "This operation do not exist. Try again."
  end
end

while true
  input_data = nil
  puts "\nEnter your math problem:"
  input_data = gets.strip.gsub(/\s+/, "")

  puts "The problem: " + input_data

  first_num = input_data.to_i
  puts "First number is #{first_num}"

  input_data.slice!(first_num.to_s)

  second_num = input_data[1..-1].to_i
  puts "Second number is #{second_num}\n>>>> An operation is #{input_data[0]}"

  puts calculate(input_data[0], first_num, second_num)
end