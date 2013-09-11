class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  # GET /stores
  # GET /stores.json
  def index
    @recipes = Recipe.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /stores/1
  # GET /stores/1.json
  #def show
  #  @store = Recipe.find(params[:id])
  #end
  def show
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_params
      params.require(:store).permit(:index, :show)
    end
end
