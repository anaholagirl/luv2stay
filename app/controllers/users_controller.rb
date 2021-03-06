class UsersController <ApplicationController

  before_action :authorize, only: :destroy

  def show
    @user = user.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = 'Account successfully created'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(parms[:id])
    @user.destroy
    flash[:alert] = 'Account deleted'
    redirect to root_path
  end

private
  def user_params
    params.require(:user).permit(:email, :password_digest)
  end
end
