class AllowancesController < ApplicationController
  def radio_index
    @allowance_types = Allowancetype.all
    @employee_salary = Employeesalary.new
  end

  def radio_create
    @employee_salary = Employeesalary.new(employee_salary_params)
    if @employee_salary.save
      @employee_salary.employeeallowances.create(allowancetype_id: params[:allowancetype_id])
      redirect_to radio_index_path, notice: "Employee salary is successfully created."
    else
      render :radio_index
    end
  end

  def check_box_index
    @allowance_types = Allowancetype.all
    @employee_salary = Employeesalary.new
  end

  def check_box_create
      fail
  end

  private

  def employee_salary_params
    params.require(:employeesalary).permit(:salary, :netallowanceamount, :netsalary)
  end
end
