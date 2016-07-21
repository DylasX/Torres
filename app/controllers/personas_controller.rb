class PersonasController < ApplicationController

  def index
    @torre = Torre.find(params[:torre_id])
    @apto = Apto.find(params[:apto_id])
    @personas = Persona.all
  end

  def new
        @torre = Torre.find(params[:torre_id])
        @apto = Apto.find(params[:apto_id])
        @persona = Persona.new
  end

  def create
        @torre = Torre.find(params[:torre_id])
        @apto = Apto.find(params[:apto_id])
        @persona= Persona.new(persona_params)
        @persona.save
        redirect_to torre_apto_personas_path(@apto.torre, @apto)
  end

  def edit

    @torre = Torre.find(params[:torre_id])
    @apto = Apto.find(params[:apto_id])
    @persona= @apto.personas.find(params[:id])



  end

  def update

    @persona = Persona.find(params[:id])
    @persona.update(apto_params)
    redirect_to torre_apto_path(@apto.torre, @apto)

  end

  def destroy

  @persona = Persona.find(params[:id])
  @persona.destroy
  redirect_to torre_index_path()

  end

  private
  def persona_params
        params.require(:persona).permit(:nombre, :identificacion, :apto_id, :torre_id)
  end


end
