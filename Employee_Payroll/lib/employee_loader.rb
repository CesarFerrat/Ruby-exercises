class EmployeeLoader
  def initialize(file, factory)
    @file = file
    @factory = factory
  end

  def data
    employee_lines = IO.readlines(@file)

    employees = employee_lines.map do |line|
      info = line.split(" ")

      @factory.employee_for_type(info[0], info)
    end

    return employees
  end
end
