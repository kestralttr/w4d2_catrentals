class CatsController < ApplicationController
  def create
    cat = Cat.new(cat_params)
    if cat.save
      redirect_to cats_url
    else
      render json: cat.errors, status: :unprocessable_entity
    end
  end

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end
end

private
def cat_params
  params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
end
