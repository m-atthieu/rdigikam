# comportement du controleur :
# sans argument, renvoie la liste des album_root
# sous forme (id) 1/, 2/, 3/, ...
# avec l'argument node, renvoie la liste des albums directement sous
# ce chemin sous la forme (id) 1/2004, 1/2005, 1/2006, ...
class AlbumPathController < ApplicationController
  def index
    @album_path = AlbumPath.new params[:node]
    respond_to do |format|
      format.json {
        render 'index.json.erb', :json => @album_path
      }
    end
  end
end
