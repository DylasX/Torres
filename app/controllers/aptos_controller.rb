class AptosController < ApplicationController


  def new

      @torre= Torre.find(params[:torre_id])
      @apto= @torre.aptos.new

  end

  def edit

    @torre = Torre.find(params[:torre_id])
    @apto = @torre.aptos.find(params[:id])

  end

  def show

        @torre = Torre.find(params[:torre_id])
        @apto= @torre.aptos.find(params[:id])
        @var2 = Apto.find(params[:id])

  end

  def create
      @torre= Torre.find(params[:torre_id])
      apto=@torre.aptos.new(apto_params)
      apto.save
      redirect_to torre_path(@torre)
  end


  def update

    @apto = Apto.find(params[:id])
    @apto.update(apto_params)
    redirect_to torre_apto_path(@apto.torre, @apto)

  end



  def destroy

  @apto = Apto.find(params[:id])
  @apto.destroy
  redirect_to torre_path(@apto.torre)

  end


private
def apto_params
    params.require(:apto).permit(:nombre,:piso,:torre_id, :id)
end

end
