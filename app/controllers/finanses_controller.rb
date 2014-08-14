class FinansesController < ApplicationController
  before_action :set_finanse, only: [:show, :edit, :update, :destroy]

  # GET /finanses
  # GET /finanses.json
  def index
    @finanses = Finanse.all
  end

  # GET /finanses/1
  # GET /finanses/1.json
  def show
  end

  # GET /finanses/new
  def new
    @finanse = Finanse.new
  end

  # GET /finanses/1/edit
  def edit
  end

  # POST /finanses
  # POST /finanses.json
  def create
    @finanse = Finanse.new(finanse_params)

    respond_to do |format|
      if @finanse.save
        format.html { redirect_to @finanse, notice: 'Finanse was successfully created.' }
        format.json { render :show, status: :created, location: @finanse }
      else
        format.html { render :new }
        format.json { render json: @finanse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finanses/1
  # PATCH/PUT /finanses/1.json
  def update
    respond_to do |format|
      if @finanse.update(finanse_params)
        format.html { redirect_to @finanse, notice: 'Finanse was successfully updated.' }
        format.json { render :show, status: :ok, location: @finanse }
      else
        format.html { render :edit }
        format.json { render json: @finanse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finanses/1
  # DELETE /finanses/1.json
  def destroy
    @finanse.destroy
    respond_to do |format|
      format.html { redirect_to finanses_url, notice: 'Finanse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finanse
      @finanse = Finanse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finanse_params
      params.require(:finanse).permit(:summa, :description)
    end
end
