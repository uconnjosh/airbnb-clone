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
    @property.update(property_params)
    respond_to do |format|
      format.html { redirect_to property_url(@property) }
      format.js
    end
  end

  def destroy
    @property = Property.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to user_url(current_user) }
      format.js
    end
  end

private

  def property_params
    params.require(:property).permit(:name, :location, :description, :user_id)
  end

end
