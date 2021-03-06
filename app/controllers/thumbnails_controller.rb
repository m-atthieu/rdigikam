class ThumbnailsController < ApplicationController
  # GET /thumbnails
  # GET /thumbnails.xml
  def index
    @thumbnails = Thumbnail.paginate :page => params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @thumbnails }
    end
  end

  # GET /thumbnails/1
  # GET /thumbnails/1.xml
  def show
    @thumbnail = Thumbnail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @thumbnail }
      format.png  { render :png => @thumbnail, :mime_type => Mime::Type.lookup("image/png") }
      format.jpg  { render :jpg => @thumbnail, :mime_type => Mime::Type.lookup("image/jpg") }
    end
  end

  # GET /thumbnails/new
  # GET /thumbnails/new.xml
  def new
    @thumbnail = Thumbnail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @thumbnail }
    end
  end

  # GET /thumbnails/1/edit
  def edit
    @thumbnail = Thumbnail.find(params[:id])
  end

  # POST /thumbnails
  # POST /thumbnails.xml
  def create
    @thumbnail = Thumbnail.new(params[:thumbnail])

    respond_to do |format|
      if @thumbnail.save
        flash[:notice] = 'Thumbnail was successfully created.'
        format.html { redirect_to(@thumbnail) }
        format.xml  { render :xml => @thumbnail, :status => :created, :location => @thumbnail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @thumbnail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /thumbnails/1
  # PUT /thumbnails/1.xml
  def update
    @thumbnail = Thumbnail.find(params[:id])

    respond_to do |format|
      if @thumbnail.update_attributes(params[:thumbnail])
        flash[:notice] = 'Thumbnail was successfully updated.'
        format.html { redirect_to(@thumbnail) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @thumbnail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /thumbnails/1
  # DELETE /thumbnails/1.xml
  def destroy
    @thumbnail = Thumbnail.find(params[:id])
    @thumbnail.destroy

    respond_to do |format|
      format.html { redirect_to(thumbnails_url) }
      format.xml  { head :ok }
    end
  end
end
