require_relative "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end


  def valid_title?(title)
    @salaries.include?(title)
  end


  def > (another_startup)
    @funding > another_startup.funding
  end 


  def hire(employee_name, title)
    if @salaries.include?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise "Error: invalid title"
    end
  end


  def size
    @employees.count
  end


  def pay_employee(employee)
    employee_salary = @salaries[employee.title]

    if @funding >= employee_salary
      employee.pay(employee_salary)
      @funding -= employee_salary
    else
      raise "sorry we're out of cash"
    end
  end


  def payday
    @employees.each { |employee| self.pay_employee(employee) }
  end


  # Part3
  def average_salary
    total = 0
    @employees.each { |employee| total += @salaries[employee.title] }
    total / @employees.count
  end


  def close
    @employees = []
    @funding = 0
  end


  def acquire(new_startup)
    @funding += new_startup.funding
    new_salaries = @salaries.merge(new_startup.salaries) {|k, old, new| old}
    @salaries = new_salaries
    @employees.concat(new_startup.employees)
    new_startup.close
  end

end
