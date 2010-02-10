class ImageMetadatasController < ApplicationController
  # GET /image_metadatas
  # GET /image_metadatas.xml
  def index
    @image_metadatas = ImageMetadata.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @image_metadatas }
    end
  end

  # GET /image_metadatas/1
  # GET /image_metadatas/1.xml
  def show
    @image_metadata = ImageMetadata.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image_metadata }
    end
  end

  # GET /image_metadatas/new
  # GET /image_metadatas/new.xml
  def new
    @image_metadata = ImageMetadata.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_metadata }
    end
  end

  # GET /image_metadatas/1/edit
  def edit
    @image_metadata = ImageMetadata.find(params[:id])
  end

  # POST /image_metadatas
  # POST /image_metadatas.xml
  def create
    @image_metadata = ImageMetadata.new(params[:image_metadata])

    respond_to do |format|
      if @image_metadata.save
        flash[:notice] = 'ImageMetadata was successfully created.'
        format.html { redirect_to(@image_metadata) }
        format.xml  { render :xml => @image_metadata, :status => :created, :location => @image_metadata }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image_metadata.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /image_metadatas/1
  # PUT /image_metadatas/1.xml
  def update
    @image_metadata = ImageMetadata.find(params[:id])

    respond_to do |format|
      if @image_metadata.update_attributes(params[:image_metadata])
        flash[:notice] = 'ImageMetadata was successfully updated.'
        format.html { redirect_to(@image_metadata) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image_metadata.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /image_metadatas/1
  # DELETE /image_metadatas/1.xml
  def destroy
    @image_metadata = ImageMetadata.find(params[:id])
    @image_metadata.destroy

    respond_to do |format|
      format.html { redirect_to(image_metadatas_url) }
      format.xml  { head :ok }
    end
  end
end
