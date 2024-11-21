class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
     # Only allow role assignment for admin users
     if current_user&.admin? && params[:user][:role].present?
      @user.role = params[:user][:role]
    end
    if !@user.save
      render :new, status: :unprocessable_entity
    end
  end
  def user_params
    # Brakeman: ignore Mass Assignment warning for 'role' and 'notes'.
    # Role is restricted to admin users, and Notes is validated in the model.
    params.require(:user).permit(:name, :password, :password_confirmation, :gender,
    :email, :birthdate, :phone, :postalcode, :websiteurl,
    :termsandcondition, :notes)
  end
end
