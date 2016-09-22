class BusinessIdentitiesController < ApplicationController
  before_action :set_business_identity, only: [:show, :edit, :update, :destroy]

  # GET /business_identities
  # GET /business_identities.json
  def index
    @business_identities = BusinessIdentity.all
  end

  # GET /business_identities/1
  # GET /business_identities/1.json
  def show
  end

  # GET /business_identities/new
  def new
    @business_identity = BusinessIdentity.new
  end

  # GET /business_identities/1/edit
  def edit
  end

  # POST /business_identities
  # POST /business_identities.json
  def create
    @business_identity = BusinessIdentity.new(business_identity_params)

    respond_to do |format|
      if @business_identity.save
        format.html { redirect_to @business_identity, notice: 'Business identity was successfully created.' }
        format.json { render :show, status: :created, location: @business_identity }
      else
        format.html { render :new }
        format.json { render json: @business_identity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_identities/1
  # PATCH/PUT /business_identities/1.json
  def update
    respond_to do |format|
      if @business_identity.update(business_identity_params)
        format.html { redirect_to @business_identity, notice: 'Business identity was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_identity }
      else
        format.html { render :edit }
        format.json { render json: @business_identity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_identities/1
  # DELETE /business_identities/1.json
  def destroy
    @business_identity.destroy
    respond_to do |format|
      format.html { redirect_to business_identities_url, notice: 'Business identity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_identity
      @business_identity = BusinessIdentity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_identity_params
      params.require(:business_identity).permit(:user_id, :name, :note, :edited_by)
    end
end
