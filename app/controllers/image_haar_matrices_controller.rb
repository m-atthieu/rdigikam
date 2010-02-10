class ImageHaarMatricesController < ApplicationController
  # GET /image_haar_matrices
  # GET /image_haar_matrices.xml
  def index
    @image_haar_matrices = ImageHaarMatrix.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @image_haar_matrices }
    end
  end

  # GET /image_haar_matrices/1
  # GET /image_haar_matrices/1.xml
  def show
    @image_haar_matrix = ImageHaarMatrix.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image_haar_matrix }
    end
  end

  # GET /image_haar_matrices/new
  # GET /image_haar_matrices/new.xml
  def new
    @image_haar_matrix = ImageHaarMatrix.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_haar_matrix }
    end
  end

  # GET /image_haar_matrices/1/edit
  def edit
    @image_haar_matrix = ImageHaarMatrix.find(params[:id])
  end

  # POST /image_haar_matrices
  # POST /image_haar_matrices.xml
  def create
    @image_haar_matrix = ImageHaarMatrix.new(params[:image_haar_matrix])

    respond_to do |format|
      if @image_haar_matrix.save
        flash[:notice] = 'ImageHaarMatrix was successfully created.'
        format.html { redirect_to(@image_haar_matrix) }
        format.xml  { render :xml => @image_haar_matrix, :status => :created, :location => @image_haar_matrix }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image_haar_matrix.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /image_haar_matrices/1
  # PUT /image_haar_matrices/1.xml
  def update
    @image_haar_matrix = ImageHaarMatrix.find(params[:id])

    respond_to do |format|
      if @image_haar_matrix.update_attributes(params[:image_haar_matrix])
        flash[:notice] = 'ImageHaarMatrix was successfully updated.'
        format.html { redirect_to(@image_haar_matrix) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image_haar_matrix.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /image_haar_matrices/1
  # DELETE /image_haar_matrices/1.xml
  def destroy
    @image_haar_matrix = ImageHaarMatrix.find(params[:id])
    @image_haar_matrix.destroy

    respond_to do |format|
      format.html { redirect_to(image_haar_matrices_url) }
      format.xml  { head :ok }
    end
  end
end
