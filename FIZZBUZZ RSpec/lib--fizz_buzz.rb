class FizzBuzz
  def initialize(numbers)
    @numbers = numbers
  end

  def multiple(mult, number)
    return number % mult == 0
  end

  def line(number)
    message = ""

    @numbers.each do |divisor, word|
      if self.multiple(divisor, number)
        message = message + word + " "
      end
    end

    if message == ""
      return number.to_s
    else
      return message.rstrip
    end
  end
end
