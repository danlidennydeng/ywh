class OfficialIdentitiesController < ApplicationController
  before_action :set_official_identity, only: [:show, :edit, :update, :destroy]

  # GET /official_identities
  # GET /official_identities.json
  def index
    @official_identities = OfficialIdentity.all
  end

  # GET /official_identities/1
  # GET /official_identities/1.json
  def show
  end

  # GET /official_identities/new
  def new
    @official_identity = OfficialIdentity.new
  end

  # GET /official_identities/1/edit
  def edit
  end

  # POST /official_identities
  # POST /official_identities.json
  def create
    @official_identity = OfficialIdentity.new(official_identity_params)

    respond_to do |format|
      if @official_identity.save
        format.html { redirect_to @official_identity, notice: 'Official identity was successfully created.' }
        format.json { render :show, status: :created, location: @official_identity }
      else
        format.html { render :new }
        format.json { render json: @official_identity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /official_identities/1
  # PATCH/PUT /official_identities/1.json
  def update
    respond_to do |format|
      if @official_identity.update(official_identity_params)
        format.html { redirect_to @official_identity, notice: 'Official identity was successfully updated.' }
        format.json { render :show, status: :ok, location: @official_identity }
      else
        format.html { render :edit }
        format.json { render json: @official_identity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /official_identities/1
  # DELETE /official_identities/1.json
  def destroy
    @official_identity.destroy
    respond_to do |format|
      format.html { redirect_to official_identities_url, notice: 'Official identity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_official_identity
      @official_identity = OfficialIdentity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def official_identity_params
      params.require(:official_identity).permit(:user_id, :name, :note, :edited_by)
    end
end
