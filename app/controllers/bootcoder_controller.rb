class BootcoderController < ApplicationController
  def index
  end

  def new
  end

  def create
    @bootcoder = Bootcoder.new(bootcoder_params)

    if @bootcoder.save
      render 'show'
    else
      render '_new'
    end
  end

  def show
      @bootcoder = Bootcoder.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def bootcoder_params
      params.require(:bootcoder).permit(:handle, :email, :phone, :password, :password_confirmation)
    end
end
