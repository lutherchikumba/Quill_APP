class PrivateInfomationsController < ApplicationController
  before_action :set_private_infomation, only: [:show, :edit, :update, :destroy]

  # GET /private_infomations
  # GET /private_infomations.json
  def index
    @private_infomations = PrivateInfomation.all
  end

  # GET /private_infomations/1
  # GET /private_infomations/1.json
  def show
  end

  # GET /private_infomations/new
  def new
    @private_infomation = PrivateInfomation.new
  end

  # GET /private_infomations/1/edit
  def edit
  end

  # POST /private_infomations
  # POST /private_infomations.json
  def create
    @private_infomation = PrivateInfomation.new(private_infomation_params)

    respond_to do |format|
      if @private_infomation.save
        format.html { redirect_to @private_infomation, notice: 'Private infomation was successfully created.' }
        format.json { render :show, status: :created, location: @private_infomation }
      else
        format.html { render :new }
        format.json { render json: @private_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_infomations/1
  # PATCH/PUT /private_infomations/1.json
  def update
    respond_to do |format|
      if @private_infomation.update(private_infomation_params)
        format.html { redirect_to @private_infomation, notice: 'Private infomation was successfully updated.' }
        format.json { render :show, status: :ok, location: @private_infomation }
      else
        format.html { render :edit }
        format.json { render json: @private_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_infomations/1
  # DELETE /private_infomations/1.json
  def destroy
    @private_infomation.destroy
    respond_to do |format|
      format.html { redirect_to private_infomations_url, notice: 'Private infomation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_infomation
      @private_infomation = PrivateInfomation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def private_infomation_params
      params.require(:private_infomation).permit(:email, :phone, :gender)
    end
end
