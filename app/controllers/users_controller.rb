class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  # GET /projects
  # GET /projects.json
  def index
    @users = User.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new


  # GET /projects/1/edit
  def edit
  end
  # DELETE /users/1
  # DELETE /users/1.json
   # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
  User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end


  
  # POST /projects
  # POST /projects.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:pseudo, :description,:avatar)
    end
end
