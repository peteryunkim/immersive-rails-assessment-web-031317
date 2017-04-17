class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show

    @episode = Episode.find(params[:id])
  end

  def new
    if session[:id].present?
      @episode = Episode.new
      @guests = Guest.all
    else
      redirect_to episodes_path
    end
  end

  def create
    # byebug
    @episode = Episode.new(episode_params)
    if @episode.save
      redirect_to episode_path(@episode)
    else
      redirect_to new_episode_path
    end

  end

  def edit
    if session[:id].present?
      @episode = Episode.find(params[:id])
    else
      redirect_to episodes_path
    end
  end

  def update
    @episode = Episode.find(params[:id])
    if @episode.update(episode_params)
      redirect_to episode_path(@episode)
    else
      redirect_to edit_episode_path
    end
  end

  def destroy
    @episode.destroy
    redirect_to episodes_path
  end


private
  def episode_params
    params.require(:episode).permit(:date, :number, :rating, :guests)
  end
end
