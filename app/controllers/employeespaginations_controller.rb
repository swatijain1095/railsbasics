class EmployeespaginationsController < ApplicationController
  def index
    #Pagination
    # @employees = Employee.all
    # @employees = Employee.page(params[:page])
    @employees = Employee.page(params[:page]).per(2)
  end
end
