require_relative("employee.rb")

class SalourlyEmployee < Employee
  def initialize(info)
    super(info)
    @salary = info[:salary].to_i
    @hours = info[:hours].to_i
    @rate = info[:rate].to_i
  end

  def payroll
    return @salary + (@hours * @rate)
  end
end
