require_relative("salourly_employee.rb")
require_relative("hourly_employee.rb")
require_relative("salary_employee.rb")

class EmployeeFactory
  def employee_for_type(type, info)
      employee = { :name => info[1] }

      if type == "Salary"
        employee[:salary] = info[2]
        employee = SalaryEmployee.new(employee)
      elsif type == "Hourly"
        employee[:hours] = info[2]
        employee[:rate] = info[3]
        employee = HourlyEmployee.new(employee)
      elsif type == "Salourly"
        employee[:salary] = info[2]
        employee[:hours] = info[3]
        employee[:rate] = info[4]
        employee = SalourlyEmployee.new(employee)
      end

      return employee
  end
end
