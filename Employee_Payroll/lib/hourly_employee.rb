require_relative("employee.rb")

class HourlyEmployee < Employee
  def initialize(info)
    super(info)
    @hours = info[:hours].to_i
    @rate = info[:rate].to_i
  end

  def payroll
    return @hours * @rate
  end
end
