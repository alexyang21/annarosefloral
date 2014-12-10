class FlowerItemsController < ApplicationController
  before_action :set_flower_item, only: [:show, :edit, :update, :destroy]
  before_action :set_flower_arrangement, only: [:index, :new, :create]

  # GET /flower_items
  # GET /flower_items.json
  def index
    @flower_items = FlowerItem.all
  end

  # GET /flower_items/1
  # GET /flower_items/1.json
  def show
  end

  # GET /flower_items/new
  def new
    @flower_item = FlowerItem.new
  end

  # GET /flower_items/1/edit
  def edit
  end

  # POST /flower_items
  # POST /flower_items.json
  def create
    @flower_item = FlowerItem.new(flower_item_params)
    @flower_item.flower_arrangement_id = @flower_arrangement.id

    respond_to do |format|
      if @flower_item.save
        
        # Update cost of flower arrangement
        @flower_item.flower_arrangement.cost += @flower_item.quantity * @flower_item.flower.cost
        @flower_item.flower_arrangement.save
        
        format.html { redirect_to @flower_arrangement, notice: 'Flower item was successfully created.' }
        format.json { render :show, status: :created, location: @flower_item }
      else
        format.html { render :new }
        format.json { render json: @flower_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flower_items/1
  # PATCH/PUT /flower_items/1.json
  def update
    @old_cost = @flower_item.quantity * @flower_item.flower.cost
    
    respond_to do |format|
      if @flower_item.update(flower_item_params)
        
        # Update cost of flower arrangement
        @flower_item.flower_arrangement.cost += @flower_item.quantity * @flower_item.flower.cost - @old_cost
        @flower_item.flower_arrangement.save
        
        format.html { redirect_to flower_arrangement_url(@flower_item.flower_arrangement_id), notice: 'Flower item was successfully updated.' }
        format.json { render :show, status: :ok, location: @flower_item }
      else
        format.html { render :edit }
        format.json { render json: @flower_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flower_items/1
  # DELETE /flower_items/1.json
  def destroy
    @flower_arrangement_id = @flower_item.flower_arrangement_id
    
    @flower_item.destroy
    respond_to do |format|
      format.html { redirect_to flower_arrangement_url(@flower_arrangement_id), notice: 'Flower item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flower_item
      @flower_item = FlowerItem.find(params[:id])
    end
    
    def set_flower_arrangement
      @flower_arrangement = FlowerArrangement.find(params[:flower_arrangement_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flower_item_params
      params.require(:flower_item).permit(:quantity, :flower_id)
    end
end
