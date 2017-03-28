class ProsController < ApplicationController
  before_action :find_pro , only:[:show ,:edit ,:update ,:destroy]
  def index
    @pros =Pro.all.order("created_at DESC")
  end

  def show
  end

  def new
    @pro =current_user.pros.build
  end

  def create
    @pro =current_user.pros.build(pro_params)

    if @pro.save
      redirect_to @pro
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pro.update(pro_params)
      redirect_to @pro
    else
      render 'edit'
    end
  end

  def destroy
    @pro.destroy
    redirect_to pros_path
  end

  private

  def find_pro
    @pro= Pro.find(params[:id])

  end

  def pro_params
    params.require(:pro).permit(:name, :price, :category, :photo)
  end
end
