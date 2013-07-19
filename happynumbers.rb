class HappyNumbers
  def initialize
    @happyNumberArray = []
  end

  def split_number_to_digits number
    digits = []
    number.to_s().split(//).each do |digit|
      digits.push(digit.to_i)
    end
    digits
  end

  def sum_squares_of_digits number
    digits = split_number_to_digits number
    newNumber = 0
    digits.each do |digit|
      newNumber += (digit * digit)
    end
    return newNumber
  end

  def is_happy_number number
    numberList = []
    while (number != 1)
      if (numberList.include? number)
        return false
      end
      numberList << number
      runningNumber = sum_squares_of_digits number
      number = runningNumber
    end
    return true
  end

  def permutate number
    digits = split_number_to_digits number
    permutations = digits.permutation().to_a
    permutations.each() do |happy|
      @happyNumberArray << happy
    end
  end

  def build_happy_numbers *numbers

    numbers.each do |number|
      if is_happy_number number
         permutate number
      end
    end
  end

  def get_happy_numbers
    @happyNumberArray
  end
end

numberList = (1..19).to_a
happyist = HappyNumbers.new()
happyist.build_happy_numbers numberList

puts "Total happy numbers: #{happyist.get_happy_numbers.length}"
