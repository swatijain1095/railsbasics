class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)

    if !@user.save
      render :new, status: :unprocessable_entity
    end
  end
  def user_params
    # Brakeman: ignore Mass Assignment warning for 'role' and 'notes'.
    # Role is restricted to admin users, and Notes is validated in the model.
    permitted_attributes = [
      :name, :password, :password_confirmation, :gender,
      :email, :birthdate, :phone, :postalcode, :websiteurl,
      :termsandcondition, :notes
    ]
    permitted_attributes << :role if current_user&.admin?
    params.require(:user).permit(*permitted_attributes)
  end
end
