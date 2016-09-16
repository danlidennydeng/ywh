class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update] # probably want to keep using this
 
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end
 
  # # GET /users/1
  # # GET /users/1.json
  def show
 
  end
 
  # GET /users/1/edit
  def edit
 
  end
 
  # # PATCH/PUT /users/1
  # # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: '您的信息被成功更新.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
 
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:lastname, :firstname, :birth_date, :sex_id, :security_id, :role_id, :education_id, :edited_by)
    end
 
end
