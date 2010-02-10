class ImagePositionsController < ApplicationController
  # GET /image_positions
  # GET /image_positions.xml
  def index
    @image_positions = ImagePosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @image_positions }
    end
  end

  # GET /image_positions/1
  # GET /image_positions/1.xml
  def show
    @image_position = ImagePosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image_position }
    end
  end

  # GET /image_positions/new
  # GET /image_positions/new.xml
  def new
    @image_position = ImagePosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_position }
    end
  end

  # GET /image_positions/1/edit
  def edit
    @image_position = ImagePosition.find(params[:id])
  end

  # POST /image_positions
  # POST /image_positions.xml
  def create
    @image_position = ImagePosition.new(params[:image_position])

    respond_to do |format|
      if @image_position.save
        flash[:notice] = 'ImagePosition was successfully created.'
        format.html { redirect_to(@image_position) }
        format.xml  { render :xml => @image_position, :status => :created, :location => @image_position }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /image_positions/1
  # PUT /image_positions/1.xml
  def update
    @image_position = ImagePosition.find(params[:id])

    respond_to do |format|
      if @image_position.update_attributes(params[:image_position])
        flash[:notice] = 'ImagePosition was successfully updated.'
        format.html { redirect_to(@image_position) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /image_positions/1
  # DELETE /image_positions/1.xml
  def destroy
    @image_position = ImagePosition.find(params[:id])
    @image_position.destroy

    respond_to do |format|
      format.html { redirect_to(image_positions_url) }
      format.xml  { head :ok }
    end
  end
end
