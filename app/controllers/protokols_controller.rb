class ProtokolsController < ApplicationController
  before_action :set_protokol, only: [:show, :edit, :update, :destroy]

  # GET /protokols
  # GET /protokols.json
  def index
    @protokols = Protokol.all
  end

  # GET /protokols/1
  # GET /protokols/1.json
  def show
  end

  # GET /protokols/new
  def new
    @protokol = Protokol.new
  end

  # GET /protokols/1/edit
  def edit
  end

  # POST /protokols
  # POST /protokols.json
  def create
    @protokol = Protokol.new(protokol_params)

    respond_to do |format|
      if @protokol.save
        format.html { redirect_to @protokol, notice: 'Protokol was successfully created.' }
        format.json { render :show, status: :created, location: @protokol }
      else
        format.html { render :new }
        format.json { render json: @protokol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /protokols/1
  # PATCH/PUT /protokols/1.json
  def update
    respond_to do |format|
      if @protokol.update(protokol_params)
        format.html { redirect_to @protokol, notice: 'Protokol was successfully updated.' }
        format.json { render :show, status: :ok, location: @protokol }
      else
        format.html { render :edit }
        format.json { render json: @protokol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /protokols/1
  # DELETE /protokols/1.json
  def destroy
    @protokol.destroy
    respond_to do |format|
      format.html { redirect_to protokols_url, notice: 'Protokol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_protokol
      @protokol = Protokol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def protokol_params
      params.require(:protokol).permit(:number, :description)
    end
end
