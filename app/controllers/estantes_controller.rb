class EstantesController < ApplicationController
  before_action :set_estante, only: [:show, :edit, :update, :destroy]

  # GET /estantes
  # GET /estantes.json
  def index
    if user_signed_in?
      @estantes = Estante.where(usuario_id: current_user.id)
    elsif
      redirect_to users_path
    end
      
  end

  # GET /estantes/1
  # GET /estantes/1.json
  def show
  end

  # GET /estantes/new
  def new
    @estante = Estante.new
  end

  # GET /estantes/1/edit
  def edit
  end

  # POST /estantes
  # POST /estantes.json
  def create
    @estante = Estante.new(estante_params)
    @estante.usuario_id = current_user.id

    respond_to do |format|
      if @estante.save
        format.html { redirect_to @estante, notice: 'Estante was successfully created.' }
        format.json { render :show, status: :created, location: @estante }
      else
        format.html { render :new }
        format.json { render json: @estante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estantes/1
  # PATCH/PUT /estantes/1.json
  def update
    respond_to do |format|
      if @estante.update(estante_params)
        format.html { redirect_to @estante, notice: 'Estante was successfully updated.' }
        format.json { render :show, status: :ok, location: @estante }
      else
        format.html { render :edit }
        format.json { render json: @estante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estantes/1
  # DELETE /estantes/1.json
  def destroy
    @estante.destroy
    respond_to do |format|
      format.html { redirect_to estantes_url, notice: 'Estante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estante
      @estante = Estante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estante_params
      params.require(:estante).permit(:name, :usuario_id)
    end
end
