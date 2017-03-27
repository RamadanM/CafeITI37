class ProsController < ApplicationController
  before_action :find_pro , only:[:show ,:edit ,:update ,:destroy]
  def index
    @pros =Pro.all.order("created_at DESC")
  end

  def show
  end

  def new
    @pro =Pro.new
  end

  def create
    @pro =Pro.new(pro_params)

    if @pro.save
      redirect_to @pro
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_pro
    @pro= Pro.find(params[:id])

  end

  def pro_params
    params.require(:pro).permit(:name, :price, :category, :photo)
  end
end
