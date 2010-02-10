class ImageInformationsController < ApplicationController
  # GET /image_informations
  # GET /image_informations.xml
  def index
    @image_informations = ImageInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @image_informations }
    end
  end

  # GET /image_informations/1
  # GET /image_informations/1.xml
  def show
    @image_information = ImageInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image_information }
    end
  end

  # GET /image_informations/new
  # GET /image_informations/new.xml
  def new
    @image_information = ImageInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_information }
    end
  end

  # GET /image_informations/1/edit
  def edit
    @image_information = ImageInformation.find(params[:id])
  end

  # POST /image_informations
  # POST /image_informations.xml
  def create
    @image_information = ImageInformation.new(params[:image_information])

    respond_to do |format|
      if @image_information.save
        flash[:notice] = 'ImageInformation was successfully created.'
        format.html { redirect_to(@image_information) }
        format.xml  { render :xml => @image_information, :status => :created, :location => @image_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /image_informations/1
  # PUT /image_informations/1.xml
  def update
    @image_information = ImageInformation.find(params[:id])

    respond_to do |format|
      if @image_information.update_attributes(params[:image_information])
        flash[:notice] = 'ImageInformation was successfully updated.'
        format.html { redirect_to(@image_information) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /image_informations/1
  # DELETE /image_informations/1.xml
  def destroy
    @image_information = ImageInformation.find(params[:id])
    @image_information.destroy

    respond_to do |format|
      format.html { redirect_to(image_informations_url) }
      format.xml  { head :ok }
    end
  end
end
