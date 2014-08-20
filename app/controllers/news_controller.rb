class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  # GET /news
  # GET /news.json
  def index
    @news = News.all
    
    # session[:message] = nil
    # cookies[:message] = 'hello cooke'
  end

  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = News.new
    # if session[:message] 
    #   render text: 'Session messagesssss'
    # else
    #   session[:message] = cookies[:message]
    #   redirect_to move_path
    # end
  end

  # GET /news/1/edit
  def edit
  end

  def move
    render text: "#{params[:status]}  #{params[:locale]} Session message #{session[:message]} and #{params[:message]}"
  end

  # POST /news
  # POST /news.json
  def create
    @news = News.new(news_params)
    @users = User.all
    respond_to do |format|
      if @news.save
        UserMailer.welcome_email(@users, @news).deliver
        format.html { redirect_to @news, notice: 'News was successfully created.' }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to @news, notice: 'News was successfully updated.' }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_index_url, notice: 'News was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title, :description)
    end
end
