class XiaoqusController < ApplicationController
  before_action :set_xiaoqu, only: [:show, :edit, :update, :destroy]

  # GET /xiaoqus
  # GET /xiaoqus.json
  def index
    @xiaoqus = Xiaoqu.all
  end

  # GET /xiaoqus/1
  # GET /xiaoqus/1.json
  def show
  end

  # GET /xiaoqus/new
  def new
    @xiaoqu = Xiaoqu.new
  end

  # GET /xiaoqus/1/edit
  def edit
  end

  # POST /xiaoqus
  # POST /xiaoqus.json
  def create
    @xiaoqu = Xiaoqu.new(xiaoqu_params)

    respond_to do |format|
      if @xiaoqu.save
        format.html { redirect_to @xiaoqu, notice: 'Xiaoqu was successfully created.' }
        format.json { render :show, status: :created, location: @xiaoqu }
      else
        format.html { render :new }
        format.json { render json: @xiaoqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xiaoqus/1
  # PATCH/PUT /xiaoqus/1.json
  def update
    respond_to do |format|
      if @xiaoqu.update(xiaoqu_params)
        format.html { redirect_to @xiaoqu, notice: 'Xiaoqu was successfully updated.' }
        format.json { render :show, status: :ok, location: @xiaoqu }
      else
        format.html { render :edit }
        format.json { render json: @xiaoqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xiaoqus/1
  # DELETE /xiaoqus/1.json
  def destroy
    @xiaoqu.destroy
    respond_to do |format|
      format.html { redirect_to xiaoqus_url, notice: 'Xiaoqu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xiaoqu
      @xiaoqu = Xiaoqu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xiaoqu_params
      params.require(:xiaoqu).permit(:name, :address, :total_units, :populations, :starting_year, :starting_month, :note, :edited_by)
    end
end
