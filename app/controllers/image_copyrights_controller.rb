class ImageCopyrightsController < ApplicationController
  # GET /image_copyrights
  # GET /image_copyrights.xml
  def index
    @image_copyrights = ImageCopyright.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @image_copyrights }
    end
  end

  # GET /image_copyrights/1
  # GET /image_copyrights/1.xml
  def show
    @image_copyright = ImageCopyright.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image_copyright }
    end
  end

  # GET /image_copyrights/new
  # GET /image_copyrights/new.xml
  def new
    @image_copyright = ImageCopyright.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_copyright }
    end
  end

  # GET /image_copyrights/1/edit
  def edit
    @image_copyright = ImageCopyright.find(params[:id])
  end

  # POST /image_copyrights
  # POST /image_copyrights.xml
  def create
    @image_copyright = ImageCopyright.new(params[:image_copyright])

    respond_to do |format|
      if @image_copyright.save
        flash[:notice] = 'ImageCopyright was successfully created.'
        format.html { redirect_to(@image_copyright) }
        format.xml  { render :xml => @image_copyright, :status => :created, :location => @image_copyright }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image_copyright.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /image_copyrights/1
  # PUT /image_copyrights/1.xml
  def update
    @image_copyright = ImageCopyright.find(params[:id])

    respond_to do |format|
      if @image_copyright.update_attributes(params[:image_copyright])
        flash[:notice] = 'ImageCopyright was successfully updated.'
        format.html { redirect_to(@image_copyright) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image_copyright.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /image_copyrights/1
  # DELETE /image_copyrights/1.xml
  def destroy
    @image_copyright = ImageCopyright.find(params[:id])
    @image_copyright.destroy

    respond_to do |format|
      format.html { redirect_to(image_copyrights_url) }
      format.xml  { head :ok }
    end
  end
end
