class OffshoreemployeesController < ApplicationController
  def new
    @offshoreemployee = offshoreemployee.new
  end
  def create
    @offshoreemployee = offshoreemployee.new(offshoreemployee_params)
    if @offshoreemployee.save
      redirect_to new_offshoreemployee_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def offshoreemployee_params
    params.require(:offshoreemployee).permit(:firstname, :lastname, :country_id, :state_id, :city_id)
  end
end
