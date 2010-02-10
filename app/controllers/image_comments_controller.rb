class ImageCommentsController < ApplicationController
  # GET /image_comments
  # GET /image_comments.xml
  def index
    @image_comments = ImageComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @image_comments }
    end
  end

  # GET /image_comments/1
  # GET /image_comments/1.xml
  def show
    @image_comment = ImageComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image_comment }
    end
  end

  # GET /image_comments/new
  # GET /image_comments/new.xml
  def new
    @image_comment = ImageComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_comment }
    end
  end

  # GET /image_comments/1/edit
  def edit
    @image_comment = ImageComment.find(params[:id])
  end

  # POST /image_comments
  # POST /image_comments.xml
  def create
    @image_comment = ImageComment.new(params[:image_comment])

    respond_to do |format|
      if @image_comment.save
        flash[:notice] = 'ImageComment was successfully created.'
        format.html { redirect_to(@image_comment) }
        format.xml  { render :xml => @image_comment, :status => :created, :location => @image_comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /image_comments/1
  # PUT /image_comments/1.xml
  def update
    @image_comment = ImageComment.find(params[:id])

    respond_to do |format|
      if @image_comment.update_attributes(params[:image_comment])
        flash[:notice] = 'ImageComment was successfully updated.'
        format.html { redirect_to(@image_comment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /image_comments/1
  # DELETE /image_comments/1.xml
  def destroy
    @image_comment = ImageComment.find(params[:id])
    @image_comment.destroy

    respond_to do |format|
      format.html { redirect_to(image_comments_url) }
      format.xml  { head :ok }
    end
  end
end
