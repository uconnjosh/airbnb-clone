class PhotosController < ApplicationController

  def new
    @photo = Photo.new
    @property = Property.find(params[:property_id])
  end

  def create
    @property = Property.find(params[:property_id])
    @photo = @property.photos.new(photo_params)
    if @photo.save
      respond_to do |format|
        format.html { redirect_to property_path(@property) }
        format.js
      end
    else
      render 'property_path(@property)'
    end
  end

  def destroy
    @photo = Photo.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to user_url(current_user) }
      format.js
    end
  end

private

  def photo_params
    params.require(:photo).permit(:caption, :property_id, :pic)
  end

end
