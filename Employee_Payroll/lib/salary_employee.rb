require_relative("employee.rb")

class SalaryEmployee < Employee
  def initialize(info)
    super(info)
    @salary = info[:salary].to_i
  end

  def payroll
    return @salary
  end
end
