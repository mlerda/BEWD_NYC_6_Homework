class PaintingsController < ApplicationController

  def index
    @paintings = Painting.search_for(params[:query])
  end

  def show
    @painting = Painting.find(params[:id])
  end

  def new
    @painting = Painting.new
  end

  def edit
  end

  def create
    @painting = Painting.new(painting_params)

    respond_to do |format|
      if @painting.save
        format.html { redirect_to @painting, notice: 'Painting was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end


  def update
    respond_to do |format|
      if @painting.update(painting_params)
        format.html { redirect_to @painting, notice: 'Painting was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @painting.destroy
    respond_to do |format|
      format.html { redirect_to paintings_url }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_painting
    @painting = Painting.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def painting_params
    params.require(:painting).permit(:name, :artist, :museum, :image)
  end
end
