class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    @list = List.find(params[:id])
    @film = Film.new(film_params)
    if @film.save!
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def delete
    @film = Film.find(params[:id])
  end

  def destroy
    @film = Film.find(params[:id])
    @film.delete
  end

  private

  def film_params
    params.require(:film).permit(:title, :preview, :url, :rating)
  end
end
