class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  # GET /users
  # GET /users.json
  def index
      @users = User.paginate(page: params[:page])  end
=======
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0

  # GET /users/1
  # GET /users/1.json
  def show
<<<<<<< HEAD
      @user = User.find(params[:id])
=======
<<<<<<< HEAD
      @user = User.find(params[:id])
=======
<<<<<<< HEAD
=======
    @microposts = Micropost.all
>>>>>>> d9c4b2d1f7e70545700ffaee6ed09d3a59544a60
>>>>>>> 4cc34a407957ef17da36e70102c9e7246b69aedd
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
    if @user.save
        log_in @user
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user
    # Handle a successful save.
    else
    render 'new'
<<<<<<< HEAD
=======
=======
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
>>>>>>> 4cc34a407957ef17da36e70102c9e7246b69aedd
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
<<<<<<< HEAD
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
          flash[:success] = "Profile updated"
          redirect_to @user
          else
          render 'edit'
      end
  end
  
  def edit
      @user = User.find(params[:id])
=======
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
<<<<<<< HEAD
      User.find(params[:id]).destroy
      flash[:success] = "User deleted"
      redirect_to users_url
  end
  
  def logged_in_user
      unless logged_in?
          store_location
          flash[:danger] = "Please log in."
          redirect_to login_url
      end
  end
  
  def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
=======
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
<<<<<<< HEAD
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
   
=======
<<<<<<< HEAD
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
=======
      params.require(:user).permit(:name, :email)
>>>>>>> 4cc34a407957ef17da36e70102c9e7246b69aedd
    end
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
end
