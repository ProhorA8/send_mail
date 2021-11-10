class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy send_report_mail ]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_now

      redirect_to(@user, notice: 'User was successfully created.')
    else
      render action: 'new'
    end
  end

  def update
    if @user.update(user_params)

      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy

    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  def send_report_mail
    UserMailer.report_send(@user).deliver
    flash[:notice] = 'Order has been sent.'
    redirect_to(@user, notice: 'User was successfully created.')
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:code, :email, :entity, :report_type)
  end
end
