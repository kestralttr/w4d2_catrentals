class CatsController < ApplicationController
  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to cats_url
    else
      render json: @cat.errors, status: :unprocessable_entity
    end
  end

  def new
    @cat = Cat.new(birth_date: "", name: "", color: "default", description: "", sex: "M")
    render :new
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update_attributes(cat_params)
      redirect_to cats_url
    else
      render json: @cat.errors, status: :unprocessable_entity
    end
  end

  def index
    @cats = Cat.all.order(:id)
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
