class TumbnailsController < ApplicationController
  # GET /tumbnails
  # GET /tumbnails.xml
  def index
    @tumbnails = Tumbnail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tumbnails }
    end
  end

  # GET /tumbnails/1
  # GET /tumbnails/1.xml
  def show
    @tumbnail = Tumbnail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tumbnail }
    end
  end

  # GET /tumbnails/new
  # GET /tumbnails/new.xml
  def new
    @tumbnail = Tumbnail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tumbnail }
    end
  end

  # GET /tumbnails/1/edit
  def edit
    @tumbnail = Tumbnail.find(params[:id])
  end

  # POST /tumbnails
  # POST /tumbnails.xml
  def create
    @tumbnail = Tumbnail.new(params[:tumbnail])

    respond_to do |format|
      if @tumbnail.save
        flash[:notice] = 'Tumbnail was successfully created.'
        format.html { redirect_to(@tumbnail) }
        format.xml  { render :xml => @tumbnail, :status => :created, :location => @tumbnail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tumbnail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tumbnails/1
  # PUT /tumbnails/1.xml
  def update
    @tumbnail = Tumbnail.find(params[:id])

    respond_to do |format|
      if @tumbnail.update_attributes(params[:tumbnail])
        flash[:notice] = 'Tumbnail was successfully updated.'
        format.html { redirect_to(@tumbnail) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tumbnail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tumbnails/1
  # DELETE /tumbnails/1.xml
  def destroy
    @tumbnail = Tumbnail.find(params[:id])
    @tumbnail.destroy

    respond_to do |format|
      format.html { redirect_to(tumbnails_url) }
      format.xml  { head :ok }
    end
  end
end
