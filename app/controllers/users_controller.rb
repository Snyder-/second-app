class UsersController < ApplicationController

  # GET /users
  # GET /users.xml
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
   
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    
  end

  private
    def find_user
      @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
    end

end