class EntriesController < ApplicationController
  def new
  end

  def create
    @entry = Entry.new(entry_params)

    @entry.save
    redirect_to @entry
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def index
    @entries = Entry.all()
  end

  private
  def entry_params
    params.require(:entry).permit(:name)
  end
end
