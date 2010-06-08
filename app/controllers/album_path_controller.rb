# comportement du controleur :
# sans argument, renvoie la liste des album_root
# sous forme (id) 1/, 2/, 3/, ...
# avec l'argument node, renvoie la liste des albums directement sous
# ce chemin 
class AlbumPathController < ApplicationController
  def index
    respond_to do |format|
      format.json {
        node = params[:node]
        if not node.nil?  then
          id = node.scan(/[0-9]+/).first #.scan(/[0-9]*\//).first
          album_root = AlbumRoot.find :first, :conditions => ["id = ?", id ]
          @album_roots = Album.find :all, :conditions => ["albumRoot = ?", album_root.id ]
        else
          @album_roots = AlbumRoot.all
        end
        render :partial => 'index.json', :locals => { :id => params[:id], :album_roots => @album_roots, :node => node }
      }
    end
  end
end
