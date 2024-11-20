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

  # Brakeman: ignore Mass Assignment warning for 'role' and 'notes'.
  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :gender, :email, :birthdate, :phone, :postalcode, :websiteurl, :termsandcondition, :role, :notes)
  end
end
