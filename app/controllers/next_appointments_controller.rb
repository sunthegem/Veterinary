class NextAppointmentsController < ApplicationController
  before_action :set_next_appointment, only: [:show, :edit, :update, :destroy]

  # GET /next_appointments
  # GET /next_appointments.json
  def index
    @next_appointments = NextAppointment.all
  end

  # GET /next_appointments/1
  # GET /next_appointments/1.json
  def show
  end

  # GET /next_appointments/new
  def new
    @next_appointment = NextAppointment.new
  end

  # GET /next_appointments/1/edit
  def edit
  end

  # POST /next_appointments
  # POST /next_appointments.json
  def create
    @next_appointment = NextAppointment.new(next_appointment_params)

    respond_to do |format|
      if @next_appointment.save
        format.html { redirect_to @next_appointment, notice: 'Next appointment was successfully created.' }
        format.json { render :show, status: :created, location: @next_appointment }
      else
        format.html { render :new }
        format.json { render json: @next_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /next_appointments/1
  # PATCH/PUT /next_appointments/1.json
  def update
    respond_to do |format|
      if @next_appointment.update(next_appointment_params)
        format.html { redirect_to @next_appointment, notice: 'Next appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @next_appointment }
      else
        format.html { render :edit }
        format.json { render json: @next_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /next_appointments/1
  # DELETE /next_appointments/1.json
  def destroy
    @next_appointment.destroy
    respond_to do |format|
      format.html { redirect_to next_appointments_url, notice: 'Next appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_next_appointment
      @next_appointment = NextAppointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def next_appointment_params
      params.require(:next_appointment).permit(:next_date, :appointment_id)
    end
end
