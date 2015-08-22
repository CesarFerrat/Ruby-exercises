require_relative("lib/employee_factory.rb")
require_relative("lib/employee_loader.rb")

factory = EmployeeFactory.new
loader = EmployeeLoader.new("employees.txt", factory)
employees = loader.data

employees.each do |employee|
  puts "#{employee.name} -> #{employee.payroll}"
end
