class AlbumImagesController < ApplicationController
  def index
    @album_images = AlbumImages.new params[:node]
    respond_to do |format|
      format.json {
        render 'index.json.erb', :json => @album_images
      }
    end
  end
end
