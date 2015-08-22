require_relative("../lib/fizz_buzz.rb")

RSpec.describe("Fizz buzz") do
  before(:each) do
    @fizz_buzz = FizzBuzz.new({
      3 => "Fizz",
      5 => "Buzz",
      7 => "Boom",
      11 => "Pizza"
    })
  end

  it("returns true if second number is multiple of the first (3)") do
    expect(@fizz_buzz.multiple(3, 9)).to be(true)
    expect(@fizz_buzz.multiple(3, 9)).to be_truthy
  end

  it("returns false if second number is NOT multiple of the first (3)") do
    expect(@fizz_buzz.multiple(3, 100)).to be(false)
    expect(@fizz_buzz.multiple(3, 100)).to be_falsey
  end

  it("returns true if second number is multiple of the first (5)") do
    expect(@fizz_buzz.multiple(5, 50)).to be(true)
    expect(@fizz_buzz.multiple(5, 50)).to be_truthy
  end

  it("returns false if second number is NOT multiple of the first (5)") do
    expect(@fizz_buzz.multiple(5, 77)).to be(false)
    expect(@fizz_buzz.multiple(5, 77)).to be_falsey
  end

  it("returns “Buzz Pizza” for 55") do
    expect(@fizz_buzz.line(55)).to eq("Buzz Pizza")
  end

  it("returns the number if not multiple of any") do
    expect(@fizz_buzz.line(73)).to eq("73")
  end

  it("returns “Fizz Buzz Boom” for 105") do
    expect(@fizz_buzz.line(105)).to eq("Fizz Buzz Boom")
  end
end
