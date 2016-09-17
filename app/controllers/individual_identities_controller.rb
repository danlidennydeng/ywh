class IndividualIdentitiesController < ApplicationController
  before_action :set_individual_identity, only: [:show, :edit, :update, :destroy]

  # GET /individual_identities
  # GET /individual_identities.json
  def index
    @individual_identities = IndividualIdentity.all
  end

  # GET /individual_identities/1
  # GET /individual_identities/1.json
  def show
  end

  # GET /individual_identities/new
  def new
    @individual_identity = IndividualIdentity.new
  end

  # GET /individual_identities/1/edit
  def edit
  end

  # POST /individual_identities
  # POST /individual_identities.json
  def create
    @individual_identity = IndividualIdentity.new(individual_identity_params)

    respond_to do |format|
      if @individual_identity.save
        format.html { redirect_to @individual_identity, notice: 'Individual identity was successfully created.' }
        format.json { render :show, status: :created, location: @individual_identity }
      else
        format.html { render :new }
        format.json { render json: @individual_identity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /individual_identities/1
  # PATCH/PUT /individual_identities/1.json
  def update
    respond_to do |format|
      if @individual_identity.update(individual_identity_params)
        format.html { redirect_to @individual_identity, notice: 'Individual identity was successfully updated.' }
        format.json { render :show, status: :ok, location: @individual_identity }
      else
        format.html { render :edit }
        format.json { render json: @individual_identity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /individual_identities/1
  # DELETE /individual_identities/1.json
  def destroy
    @individual_identity.destroy
    respond_to do |format|
      format.html { redirect_to individual_identities_url, notice: 'Individual identity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_individual_identity
      @individual_identity = IndividualIdentity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def individual_identity_params
      params.require(:individual_identity).permit(:user_id, :fullname, :sex_id)
    end
end
