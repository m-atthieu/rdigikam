class UniqueHashesController < ApplicationController
  # GET /unique_hashes
  # GET /unique_hashes.xml
  def index
    @unique_hashes = UniqueHash.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unique_hashes }
    end
  end

  # GET /unique_hashes/1
  # GET /unique_hashes/1.xml
  def show
    @unique_hash = UniqueHash.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unique_hash }
    end
  end

  # GET /unique_hashes/new
  # GET /unique_hashes/new.xml
  def new
    @unique_hash = UniqueHash.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unique_hash }
    end
  end

  # GET /unique_hashes/1/edit
  def edit
    @unique_hash = UniqueHash.find(params[:id])
  end

  # POST /unique_hashes
  # POST /unique_hashes.xml
  def create
    @unique_hash = UniqueHash.new(params[:unique_hash])

    respond_to do |format|
      if @unique_hash.save
        flash[:notice] = 'UniqueHash was successfully created.'
        format.html { redirect_to(@unique_hash) }
        format.xml  { render :xml => @unique_hash, :status => :created, :location => @unique_hash }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unique_hash.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unique_hashes/1
  # PUT /unique_hashes/1.xml
  def update
    @unique_hash = UniqueHash.find(params[:id])

    respond_to do |format|
      if @unique_hash.update_attributes(params[:unique_hash])
        flash[:notice] = 'UniqueHash was successfully updated.'
        format.html { redirect_to(@unique_hash) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unique_hash.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unique_hashes/1
  # DELETE /unique_hashes/1.xml
  def destroy
    @unique_hash = UniqueHash.find(params[:id])
    @unique_hash.destroy

    respond_to do |format|
      format.html { redirect_to(unique_hashes_url) }
      format.xml  { head :ok }
    end
  end
end
