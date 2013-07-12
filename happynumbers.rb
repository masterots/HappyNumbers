class HappyNumbers
  def initialize(number)
    @number = number
  end

  def split_number_to_digits
    digits = []
    @number.to_s().split(//).each do |digit| 
      digits.push(digit.to_i)
    end
    digits
  end

  def sum_squares_of_digits
    digits = split_number_to_digits()
    newNumber = 0
    digits.each do |digit|
      newNumber += (digit * digit)
    end
    return newNumber
  end

  def is_happy_number
    runningNumber = @number
    numberList = []
    while (@number != 1)
      if (numberList.include? @number)
        return false
      end
      numberList << @number
      runningNumber = sum_squares_of_digits
      @number = runningNumber
    end
    return true
  end
end

numberList = (1..1000).to_a
totalHappyNumbers = 0

numberList.each do |number|
  happyNumber = HappyNumbers.new(number)
  if happyNumber.is_happy_number == true
    totalHappyNumbers += 1
    puts number
  end
end
puts "Total happy numbers: #{totalHappyNumbers}"
