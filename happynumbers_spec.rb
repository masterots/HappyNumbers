require_relative 'happynumbers'

describe HappyNumbers, "split_number_to_digits" do
	it "should return [1, 9] when number passed is 19" do
		happyNumbers = HappyNumbers.new(19)
		numberList = happyNumbers.split_number_to_digits()
		expect(numberList).to include(1)
		expect(numberList).to include(9)
	end
end

describe HappyNumbers, "sum_squares_of_digits" do
	it "should return 82 when number passed is 19" do
		happyNumbers = HappyNumbers.new(19)
		expect(happyNumbers.sum_squares_of_digits()).to eq(82)
	end
end

describe HappyNumbers, "is_happy_number" do
	it "should return true when number passed is 19" do
		happyNumbers = HappyNumbers.new(19)
		expect(happyNumbers.is_happy_number()).to eq(true)
	end
end

describe HappyNumbers, "is_sad_number" do
	it "should return false when number passed is 16" do
		happyNumbers = HappyNumbers.new(16)
		expect(happyNumbers.is_happy_number()).to eq(false)
	end
end