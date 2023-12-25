class UsersController < ApplicationController
  # before_action :authenticate_user!



  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    # @prototypes = Prototype.where(user_id: @user.id)
    # @user_prototypes = @user.prototypes
    # @images = @user.images
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :encryotpted_password, :name, :profile, :occupation, :position).merge(user_id: current.id)
  end

end
