class FilePathsController < ApplicationController
  # GET /file_paths
  # GET /file_paths.xml
  def index
    @file_paths = FilePath.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @file_paths }
    end
  end

  # GET /file_paths/1
  # GET /file_paths/1.xml
  def show
    @file_path = FilePath.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @file_path }
    end
  end

  # GET /file_paths/new
  # GET /file_paths/new.xml
  def new
    @file_path = FilePath.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @file_path }
    end
  end

  # GET /file_paths/1/edit
  def edit
    @file_path = FilePath.find(params[:id])
  end

  # POST /file_paths
  # POST /file_paths.xml
  def create
    @file_path = FilePath.new(params[:file_path])

    respond_to do |format|
      if @file_path.save
        flash[:notice] = 'FilePath was successfully created.'
        format.html { redirect_to(@file_path) }
        format.xml  { render :xml => @file_path, :status => :created, :location => @file_path }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @file_path.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /file_paths/1
  # PUT /file_paths/1.xml
  def update
    @file_path = FilePath.find(params[:id])

    respond_to do |format|
      if @file_path.update_attributes(params[:file_path])
        flash[:notice] = 'FilePath was successfully updated.'
        format.html { redirect_to(@file_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @file_path.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /file_paths/1
  # DELETE /file_paths/1.xml
  def destroy
    @file_path = FilePath.find(params[:id])
    @file_path.destroy

    respond_to do |format|
      format.html { redirect_to(file_paths_url) }
      format.xml  { head :ok }
    end
  end
end
