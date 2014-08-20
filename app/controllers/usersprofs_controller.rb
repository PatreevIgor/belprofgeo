class UsersprofsController < ApplicationController
  before_action :set_usersprof, only: [:show, :edit, :update, :destroy]

  # GET /usersprofs
  # GET /usersprofs.json
  def index
    @usersprofs = Usersprof.all.sort_by {|x| [x.name] }
    @count_users = 0
    @usersprofs.each {|i| @count_users+=1}
  end

  # GET /usersprofs/1
  # GET /usersprofs/1.json
  def show
  end

  # GET /usersprofs/new
  def new
    @usersprof = Usersprof.new
  end

  # GET /usersprofs/1/edit
  def edit
  end

  # POST /usersprofs
  # POST /usersprofs.json
  def create
    @usersprof = Usersprof.new(usersprof_params)

    respond_to do |format|
      if @usersprof.save
        format.html { redirect_to @usersprof, notice: 'Usersprof was successfully created.' }
        format.json { render :show, status: :created, location: @usersprof }
      else
        format.html { render :new }
        format.json { render json: @usersprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usersprofs/1
  # PATCH/PUT /usersprofs/1.json
  def update
    respond_to do |format|
      if @usersprof.update(usersprof_params)
        format.html { redirect_to @usersprof, notice: 'Usersprof was successfully updated.' }
        format.json { render :show, status: :ok, location: @usersprof }
      else
        format.html { render :edit }
        format.json { render json: @usersprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usersprofs/1
  # DELETE /usersprofs/1.json
  def destroy
    @usersprof.destroy
    respond_to do |format|
      format.html { redirect_to usersprofs_url, notice: 'Usersprof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usersprof
      @usersprof = Usersprof.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usersprof_params
      params.require(:usersprof).permit(:name, :telefon, :kartschet)
    end
end
