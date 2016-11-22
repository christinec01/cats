class CatsController < ApplicationController
before_action :find_herd
  def index
    p "#"*30
    p params
    p "#"*30
    @cats = @herd.cats
  end
  def new
    @herd = Herd.find(params[:herd_id])
    @cat = Cat.new

  end
  def create
    @cat = Cat.new()
  end

  private
  def find_herd
    if params[:herd_id]
      @herd = Herd.find(params[:herd_id])
    end
  end

  def cat_params
    params.require(:cat).permit(:name, :age)
  end
end
