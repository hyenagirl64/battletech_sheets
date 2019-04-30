class BattlemechsController < ApplicationController
  before_action :set_battlemech, only: [:show, :edit, :update, :destroy]

  # GET /battlemechs
  # GET /battlemechs.json
  def index
    @battlemechs = Battlemech.all
  end

  # GET /battlemechs/1
  # GET /battlemechs/1.json
  def show
  end

  # GET /battlemechs/new
  def new
    @battlemech = Battlemech.new
  end

  # GET /battlemechs/1/edit
  def edit
  end

  # POST /battlemechs
  # POST /battlemechs.json
  def create
    @battlemech = Battlemech.new(battlemech_params)
    @params = battlemech_params
    respond_to do |format|
      if @battlemech.save
        format.html { redirect_to @battlemech, notice: 'Battlemech was successfully created.' }
        format.json { render :show, status: :created, location: @battlemech }
      else
        format.html { render :new }
        format.json { render json: @battlemech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /battlemechs/1
  # PATCH/PUT /battlemechs/1.json
  def update
    respond_to do |format|
      if @battlemech.update(battlemech_params)
        format.html { redirect_to @battlemech, notice: 'Battlemech was successfully updated.' }
        format.json { render :show, status: :ok, location: @battlemech }
      else
        format.html { render :edit }
        format.json { render json: @battlemech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battlemechs/1
  # DELETE /battlemechs/1.json
  def destroy
    @battlemech.destroy
    respond_to do |format|
      format.html { redirect_to battlemechs_url, notice: 'Battlemech was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battlemech
      @battlemech = Battlemech.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def battlemech_params
      params.require(:battlemech).permit(:name, :serial, :tech_base, :battle_value, :cost, :tonnage, :year_made, :base_walk, 
                                        :base_run, :base_jump, :base_heat_sinks, :hp_head_armor, :hp_ct_front_armor, :hp_ct_rear_armor, 
                                        :hp_lt_front_armor, :hp_lt_rear_armor, :hp_rt_front_armor, :hp_rt_rear_armor, :hp_la_armor, 
                                        :hp_ll_armor, :hp_ra_armor, :hp_rl_armor, :hp_head_internal, :hp_ct_internal, :hp_lt_internal, 
                                        :hp_rt_internal, :hp_la_internal, :hp_ll_internal, :hp_ra_internal, :hp_rl_internal)
    end
end
