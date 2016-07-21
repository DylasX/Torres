class TorresController < ApplicationController

  def index
    @torres = Torre.all
  end

  def new
        @torre = Torre.new
  end

  def create
        @torre= Torre.new(torre_params)
        @torre.save
        redirect_to torres_path
  end

  def edit

  @torre = Torre.find(params[:id])


  end

  def show

    @torre = Torre.find(params[:id])
    @idapto = Apto.find(params[:id])
    @aptos = @torre.aptos.all

  end

  def update

  @torre = Torre.find(params[:id])
  @torre.update(torre_params)
  redirect_to torres_path

  end


  def destroy
      @torre = Torre.find(params[:id])
      @torre.destroy
      redirect_to torres_path
  end

  private
  def torre_params
        params.require(:torre).permit(:nombre, :portero, :id)
  end


end
