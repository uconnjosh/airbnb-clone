class PropertiesController < ApplicationController

  def index
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      respond_to do |format|
        format.html { redirect_to user_path(current_user) }
        format.js
      end
    else
      render 'user_path(current_user)'
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
  end

private

  def property_params
    params.require(:property).permit(:name, :location, :description, :user_id)
  end

end
