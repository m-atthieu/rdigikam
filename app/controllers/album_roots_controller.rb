class AlbumRootsController < ApplicationController
  # GET /album_roots
  # GET /album_roots.xml
  def index
    @album_roots = AlbumRoot.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @album_roots }
    end
  end

  # GET /album_roots/1
  # GET /album_roots/1.xml
  def show
    @album_root = AlbumRoot.find(params[:id])
    @albums = @album_root.albums.paginate :page => params[:page]
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @album_root }
    end
  end

  # GET /album_roots/new
  # GET /album_roots/new.xml
  #def new
  #  @album_root = AlbumRoot.new

  #  respond_to do |format|
  #    format.html # new.html.erb
  #    format.xml  { render :xml => @album_root }
  #  end
  #end

  # GET /album_roots/1/edit
  #def edit
  #  @album_root = AlbumRoot.find(params[:id])
  #end

  # POST /album_roots
  # POST /album_roots.xml
  #def create
  #  @album_root = AlbumRoot.new(params[:album_root])

  #  respond_to do |format|
  #    if @album_root.save
  #      flash[:notice] = 'AlbumRoot was successfully created.'
  #      format.html { redirect_to(@album_root) }
  #      format.xml  { render :xml => @album_root, :status => :created, :location => @album_root }
  #    else
  #      format.html { render :action => "new" }
  #      format.xml  { render :xml => @album_root.errors, :status => :unprocessable_entity }
  #    end
  #  end
  #end

  # PUT /album_roots/1
  # PUT /album_roots/1.xml
  #def update
  #  @album_root = AlbumRoot.find(params[:id])

  #  respond_to do |format|
  #    if @album_root.update_attributes(params[:album_root])
  #      flash[:notice] = 'AlbumRoot was successfully updated.'
  #      format.html { redirect_to(@album_root) }
  #      format.xml  { head :ok }
  #    else
  #      format.html { render :action => "edit" }
  #      format.xml  { render :xml => @album_root.errors, :status => :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /album_roots/1
  # DELETE /album_roots/1.xml
  #def destroy
  #  @album_root = AlbumRoot.find(params[:id])
  #  @album_root.destroy

  #  respond_to do |format|
  #    format.html { redirect_to(album_roots_url) }
  #    format.xml  { head :ok }
  #  end
  #end
end
