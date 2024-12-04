class AllowancesController < ApplicationController
  def radio_index
    @allowance_types = Allowancetype.all
    @employee_salary = Employeesalary.new
  end

  def radio_create
  end
end
