class PrototypesController < ApplicationController
  before_action :authorize_owner, only: [:edit, :update, :destroy]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @prototypes = Prototype.all.order("created_at DESC")
    # @prototype = Prototype.find(params[:id])
    # @prototype.user.name = prototype.user.name
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = current_user.prototypes.build(prototype_params)
    if @prototype.save
      redirect_to prototypes_path
    else
      render :new
    end
  end

  def edit
    @prototype = Prototype.find(params[:id])
    unless user_signed_in?
      redirect_to action: :index
    end

  end

  def show
    @prototype = Prototype.includes(:comments).find(params[:id])
    @comment = Comment.new
    @comments = @prototype.comments.includes(:user)
    
  end

  def destroy
    @prototype = Prototype.find(params[:id])
    @prototype.destroy
    redirect_to root_path
  end

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to @prototype, notice: "プロトタイプが更新されました"
    else
      render :edit
    end
  end


  def authorize_owner
    @prototype = Prototype.find(params[:id])
    unless current_user == @prototype.user
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to root_path
    end
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:title, :catch_copy, :concept, :image])
  end



  private
  

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image)
  end
end