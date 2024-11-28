class OffshoreemployeesController < ApplicationController
  def new
    @offshoreemployee = Offshoreemployee.new
  end
  def create
    @offshoreemployee = Offshoreemployee.new(offshoreemployee_params)
    if @offshoreemployee.save
      redirect_to new_offshoreemployee_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def offshoreemployee_params
    params.require(:offshoreemployee).permit(:first_name, :last_name, :country_id, :state_id, :city_id)
  end
end
