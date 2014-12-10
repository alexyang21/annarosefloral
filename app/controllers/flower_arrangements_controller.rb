class FlowerArrangementsController < ApplicationController
  before_action :set_flower_arrangement, only: [:show, :edit, :update, :destroy]
  before_action :set_event, only: [:index, :new, :create]

  # GET /flower_arrangements
  # GET /flower_arrangements.json
  def index
    @flower_arrangements = FlowerArrangement.order("category ASC, name ASC")
  end

  # GET /flower_arrangements/1
  # GET /flower_arrangements/1.json
  def show
    @flower_items = @flower_arrangement.flower_items
  end

  # GET /flower_arrangements/new
  def new
    @flower_arrangement = FlowerArrangement.new
  end

  # GET /flower_arrangements/1/edit
  def edit
  end

  # POST /flower_arrangements
  # POST /flower_arrangements.json
  def create
    @flower_arrangement = FlowerArrangement.new(flower_arrangement_params)
    @flower_arrangement.event_id = @event.id
    @flower_arrangement.cost = 0

    respond_to do |format|
      if @flower_arrangement.save
        format.html { redirect_to @flower_arrangement, notice: 'Flower arrangement was successfully created.' }
        format.json { render :show, status: :created, location: @flower_arrangement }
      else
        format.html { render :new }
        format.json { render json: @flower_arrangement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flower_arrangements/1
  # PATCH/PUT /flower_arrangements/1.json
  def update
    respond_to do |format|
      if @flower_arrangement.update(flower_arrangement_params)
        format.html { redirect_to @flower_arrangement, notice: 'Flower arrangement was successfully updated.' }
        format.json { render :show, status: :ok, location: @flower_arrangement }
      else
        format.html { render :edit }
        format.json { render json: @flower_arrangement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flower_arrangements/1
  # DELETE /flower_arrangements/1.json
  def destroy
    @flower_arrangement.destroy
    respond_to do |format|
      format.html { redirect_to event_url(@flower_arrangement.event_id), notice: 'Flower arrangement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flower_arrangement
      @flower_arrangement = FlowerArrangement.find(params[:id])
    end
    
    def set_event
      @event = Event.find(params[:event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flower_arrangement_params
      params.require(:flower_arrangement).permit(:name, :quantity)
    end
end
