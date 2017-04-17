class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    # byebug
    @guest = Guest.find(params[:id])
  end
end
