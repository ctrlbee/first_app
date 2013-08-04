class MicrocommentsController < ApplicationController
  before_action :set_microcomment, only: [:show, :edit, :update, :destroy]

  # GET /microcomments
  # GET /microcomments.json
  def index
    @microcomments = Microcomment.all
  end

  # GET /microcomments/1
  # GET /microcomments/1.json
  def show
  end

  # GET /microcomments/new
  def new
    @microcomment = Microcomment.new
  end

  # GET /microcomments/1/edit
  def edit
  end

  # POST /microcomments
  # POST /microcomments.json
  def create
    @microcomment = Microcomment.new(microcomment_params)

    respond_to do |format|
      if @microcomment.save
        format.html { redirect_to @microcomment, notice: 'Microcomment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @microcomment }
      else
        format.html { render action: 'new' }
        format.json { render json: @microcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microcomments/1
  # PATCH/PUT /microcomments/1.json
  def update
    respond_to do |format|
      if @microcomment.update(microcomment_params)
        format.html { redirect_to @microcomment, notice: 'Microcomment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @microcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microcomments/1
  # DELETE /microcomments/1.json
  def destroy
    @microcomment.destroy
    respond_to do |format|
      format.html { redirect_to microcomments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microcomment
      @microcomment = Microcomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microcomment_params
      params.require(:microcomment).permit(:status, :user_id)
    end
end
