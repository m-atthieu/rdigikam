class ImagePropertiesController < ApplicationController
  # GET /image_properties
  # GET /image_properties.xml
  def index
    @image_properties = ImageProperty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @image_properties }
    end
  end

  # GET /image_properties/1
  # GET /image_properties/1.xml
  def show
    @image_property = ImageProperty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image_property }
    end
  end

  # GET /image_properties/new
  # GET /image_properties/new.xml
  def new
    @image_property = ImageProperty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_property }
    end
  end

  # GET /image_properties/1/edit
  def edit
    @image_property = ImageProperty.find(params[:id])
  end

  # POST /image_properties
  # POST /image_properties.xml
  def create
    @image_property = ImageProperty.new(params[:image_property])

    respond_to do |format|
      if @image_property.save
        flash[:notice] = 'ImageProperty was successfully created.'
        format.html { redirect_to(@image_property) }
        format.xml  { render :xml => @image_property, :status => :created, :location => @image_property }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image_property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /image_properties/1
  # PUT /image_properties/1.xml
  def update
    @image_property = ImageProperty.find(params[:id])

    respond_to do |format|
      if @image_property.update_attributes(params[:image_property])
        flash[:notice] = 'ImageProperty was successfully updated.'
        format.html { redirect_to(@image_property) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image_property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /image_properties/1
  # DELETE /image_properties/1.xml
  def destroy
    @image_property = ImageProperty.find(params[:id])
    @image_property.destroy

    respond_to do |format|
      format.html { redirect_to(image_properties_url) }
      format.xml  { head :ok }
    end
  end
end
