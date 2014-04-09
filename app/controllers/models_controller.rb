class ModelsController < ApplicationController
  before_action :set_model, only: [:show, :edit, :update, :destroy]

  def index
    @models = Model.all
  end

  def show
  end

  def new
    @model = Model.new
  end

  def edit
  end

  def create
    @model = Model.new(model_params)

    if @model.save
      redirect_to @model, notice: 'Model was successfully created.' 
    else
      render action: 'new' 
    end
  end

  def update
    if @model.update(model_params)
      redirect_to @model, notice: 'Model was successfully updated.' 
    else
      render action: 'edit' 
    end
  end

  def destroy
    @model.destroy
    redirect_to models_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model
      @model = Model.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_params
      params.require(:model).permit(:name, :brand_id)
    end
end
