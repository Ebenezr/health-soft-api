class CheckupsController < ApplicationController

  before_action :authorize
  # GET /checkups
  def index
    @checkups = Checkup.all
    render json: @checkups
  end

  # GET /checkups/1
  def show
    checkup= set_checkup
    render json: checkup
  end

  # POST /checkups
  def create
    @checkup = Checkup.create!(checkup_params)
    render json: @checkup, status: :created
    
  end

  # PATCH/PUT /checkups/1
  def update
    checkup= set_checkup
    checkup.update!(checkup_params)
    render json: checkup
    
  end

  # DELETE /checkups/1
  def destroy
    checkup = set_checkup
    checkup.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkup
      checkup = Checkup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def checkup_params
      params.require(:checkup).permit(:patient_id, :doctor_id,:visit_id, :symptoms, :diagnosis, :advice, :checkup_date, :next_visit, :comment, :hpi)
    end
end
