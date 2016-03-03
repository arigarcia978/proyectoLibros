class EstanteLibrosController < ApplicationController
  before_action :set_estante, only: [:create]
  before_action :set_estante_libro, only: [:show, :edit, :update, :destroy]

  # GET /estante_libros
  # GET /estante_libros.json
  def index
    estante = Estante.find(params[:estante])
    @estante_libros = estante.estante_libro
  end

  # GET /estante_libros/1
  # GET /estante_libros/1.json
  def show
  end

  # GET /estante_libros/new
  def new
    @estante_libro = EstanteLibro.new
  end

  # GET /estante_libros/1/edit
  def edit
  end

  # POST /estante_libros
  # POST /estante_libros.json
  def create
    libro = Libro.create(isbn: params[:libro])
    @estante_libro = @estante.estante_libros.build(libro: libro)

    respond_to do |format|
      if @estante_libro.save
        format.html { redirect_to @estante_libro, notice: "Estante #{params[:estante]} libro was successfully created." }
        format.json { render :show, status: :created, location: @estante_libro }
      else
        format.html { render :new }
        format.json { render json: @estante_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estante_libros/1
  # PATCH/PUT /estante_libros/1.json
  def update
    respond_to do |format|
      if @estante_libro.update(estante_libro_params)
        format.html { redirect_to @estante_libro, notice: 'Estante libro was successfully updated.' }
        format.json { render :show, status: :ok, location: @estante_libro }
      else
        format.html { render :edit }
        format.json { render json: @estante_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estante_libros/1
  # DELETE /estante_libros/1.json
  def destroy
    @estante_libro.destroy
    respond_to do |format|
      format.html { redirect_to estante_libros_url, notice: 'Estante libro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estante_libro
      @estante_libro = EstanteLibro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estante_libro_params
      params.require(:estante_libro).permit(:libro_id, :estante_id)
    end

    def set_estante
      @estante = Estante.find(params[:estante])
    end
end
