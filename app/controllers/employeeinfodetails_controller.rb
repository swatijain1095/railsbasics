class EmployeeinfodetailsController < ApplicationController
  def index
    @employees = Employeeinfo.all
  end

  def new
    @employee = Employeeinfo.new
  end

  def create
  end

  def show
  end
end
