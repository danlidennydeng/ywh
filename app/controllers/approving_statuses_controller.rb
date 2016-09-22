class ApprovingStatusesController < ApplicationController
  before_action :set_approving_status, only: [:show, :edit, :update, :destroy]

  # GET /approving_statuses
  # GET /approving_statuses.json
  def index
    @approving_statuses = ApprovingStatus.all
  end

  # GET /approving_statuses/1
  # GET /approving_statuses/1.json
  def show
  end

  # GET /approving_statuses/new
  def new
    @approving_status = ApprovingStatus.new
  end

  # GET /approving_statuses/1/edit
  def edit
  end

  # POST /approving_statuses
  # POST /approving_statuses.json
  def create
    @approving_status = ApprovingStatus.new(approving_status_params)

    respond_to do |format|
      if @approving_status.save
        format.html { redirect_to @approving_status, notice: 'Approving status was successfully created.' }
        format.json { render :show, status: :created, location: @approving_status }
      else
        format.html { render :new }
        format.json { render json: @approving_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /approving_statuses/1
  # PATCH/PUT /approving_statuses/1.json
  def update
    respond_to do |format|
      if @approving_status.update(approving_status_params)
        format.html { redirect_to @approving_status, notice: 'Approving status was successfully updated.' }
        format.json { render :show, status: :ok, location: @approving_status }
      else
        format.html { render :edit }
        format.json { render json: @approving_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approving_statuses/1
  # DELETE /approving_statuses/1.json
  def destroy
    @approving_status.destroy
    respond_to do |format|
      format.html { redirect_to approving_statuses_url, notice: 'Approving status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approving_status
      @approving_status = ApprovingStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def approving_status_params
      params.require(:approving_status).permit(:name, :note, :edited_by)
    end
end
