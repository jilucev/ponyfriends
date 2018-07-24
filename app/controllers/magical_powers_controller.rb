class MagicalPowersController < ApplicationController
  before_action :set_magical_power, only: [:show, :edit, :update, :destroy]

  # GET /magical_powers
  # GET /magical_powers.json
  def index
    @magical_powers = MagicalPower.all
  end

  # GET /magical_powers/1
  # GET /magical_powers/1.json
  def show
  end

  # GET /magical_powers/new
  def new
    @magical_power = MagicalPower.new
  end

  # GET /magical_powers/1/edit
  def edit
  end

  # POST /magical_powers
  # POST /magical_powers.json
  def create
    @magical_power = MagicalPower.new(magical_power_params)

    respond_to do |format|
      if @magical_power.save
        format.html { redirect_to @magical_power, notice: 'Magical power was successfully created.' }
        format.json { render :show, status: :created, location: @magical_power }
      else
        format.html { render :new }
        format.json { render json: @magical_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magical_powers/1
  # PATCH/PUT /magical_powers/1.json
  def update
    respond_to do |format|
      if @magical_power.update(magical_power_params)
        format.html { redirect_to @magical_power, notice: 'Magical power was successfully updated.' }
        format.json { render :show, status: :ok, location: @magical_power }
      else
        format.html { render :edit }
        format.json { render json: @magical_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magical_powers/1
  # DELETE /magical_powers/1.json
  def destroy
    @magical_power.destroy
    respond_to do |format|
      format.html { redirect_to magical_powers_url, notice: 'Magical power was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magical_power
      @magical_power = MagicalPower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def magical_power_params
      params.require(:magical_power).permit(:name, :intensity)
    end
end
