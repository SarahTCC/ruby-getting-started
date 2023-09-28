class SarahsController < ApplicationController
  before_action :set_sarah, only: [:show, :edit, :update, :destroy]

  # GET /sarahs
  # GET /sarahs.json
  def index
    @sarahs = Sarah.all
  end

  # GET /sarahs/1
  # GET /sarahs/1.json
  def show
  end

  # GET /sarahs/new
  def new
    @sarah = Sarah.new
  end

  # GET /sarahs/1/edit
  def edit
  end

  # POST /sarahs
  # POST /sarahs.json
  def create
    @sarah = Sarah.new(sarah_params)

    respond_to do |format|
      if @sarah.save
        format.html { redirect_to @sarah, notice: 'sarah was successfully created.' }
        format.json { render :show, status: :created, location: @sarah }
      else
        format.html { render :new }
        format.json { render json: @sarah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sarahs/1
  # PATCH/PUT /sarahs/1.json
  def update
    respond_to do |format|
      if @sarah.update(sarah_params)
        format.html { redirect_to @sarah, notice: 'sarah was successfully updated.' }
        format.json { render :show, status: :ok, location: @sarah }
      else
        format.html { render :edit }
        format.json { render json: @sarah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sarahs/1
  # DELETE /sarahs/1.json
  def destroy
    @sarah.destroy
    respond_to do |format|
      format.html { redirect_to sarahs_url, notice: 'sarah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sarah
      @sarah = sarah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sarah_params
      params.require(:sarah).permit(:name, :description, :stock)
    end
end
