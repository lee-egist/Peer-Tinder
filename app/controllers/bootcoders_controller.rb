class BootcodersController < ApplicationController
  before_action :set_coder, only: [:show, :edit, :update, :destroy]
  def index
    @bootcoder = Bootcoder.all
  end

  def show
      @bootcoder = Bootcoder.find(params[:id])
  end

  def new
    @bootcoder = Bootcoder.new
  end

  def edit
    @bootcoder = Bootcoder.find(params[:id])
  end

  def create
    @bootcoder = Bootcoder.new(coder_params)
    respond_to do |format|
      if @bootcoder.save
        format.html { redirect_to @bootcoder, notice: 'Bootcoder was successfully created.' }
        format.json { render :show, status: :created, location: @bootcoder }
      else
        format.html { render :new }
        format.json { render json: @bootcoder.errors, status: :unprocessable_entity }
      end
    end
  end



  def update
    respond_to do |format|
  if @coder.update(coder_params)
    format.html { redirect_to @coder, notice: 'bootcoder was successfully updated.' }
    format.json { render :show, status: :ok, location: @coder }
  else
    format.html { render :edit }
    format.json { render json: @coder.errors, status: :unprocessable_entity }
  end
end
  end

  def destroy
    @coder.destroy
    respond_to do |format|
      format.html { redirect_to bootcoder_url, notice: 'Bootcoder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def new_coder
    @coder = Bootcoder.new
    render partial: '/bootcoder/form'
  end


  private

    def set_coder
      @coder = Bootcoder.find(params[:id])
    end

    def coder_params
      params.require(:bootcoder).permit(:handle, :email, :phone, :password, :password_confirmation)
    end
end
