class MicroposstsController < ApplicationController
  before_action :set_microposst, only: [:show, :edit, :update, :destroy]

  # GET /micropossts
  # GET /micropossts.json
  def index
    @micropossts = Microposst.all
  end

  # GET /micropossts/1
  # GET /micropossts/1.json
  def show
  end

  # GET /micropossts/new
  def new
    @microposst = Microposst.new
  end

  # GET /micropossts/1/edit
  def edit
  end

  # POST /micropossts
  # POST /micropossts.json
  def create
    @microposst = Microposst.new(microposst_params)

    respond_to do |format|
      if @microposst.save
        format.html { redirect_to @microposst, notice: 'Microposst was successfully created.' }
        format.json { render :show, status: :created, location: @microposst }
      else
        format.html { render :new }
        format.json { render json: @microposst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropossts/1
  # PATCH/PUT /micropossts/1.json
  def update
    respond_to do |format|
      if @microposst.update(microposst_params)
        format.html { redirect_to @microposst, notice: 'Microposst was successfully updated.' }
        format.json { render :show, status: :ok, location: @microposst }
      else
        format.html { render :edit }
        format.json { render json: @microposst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropossts/1
  # DELETE /micropossts/1.json
  def destroy
    @microposst.destroy
    respond_to do |format|
      format.html { redirect_to micropossts_url, notice: 'Microposst was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microposst
      @microposst = Microposst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def microposst_params
      params.require(:microposst).permit(:content, :user_id)
    end
end
