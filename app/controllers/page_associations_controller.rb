class PageAssociationsController < ApplicationController
  # GET /page_associations
  # GET /page_associations.xml
  def index
    @page_associations = PageAssociation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @page_associations }
    end
  end

  # GET /page_associations/1
  # GET /page_associations/1.xml
  def show
    @page_association = PageAssociation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page_association }
    end
  end

  # GET /page_associations/new
  # GET /page_associations/new.xml
  def new
    @page_association = PageAssociation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page_association }
    end
  end

  # GET /page_associations/1/edit
  def edit
    @page_association = PageAssociation.find(params[:id])
  end

  # POST /page_associations
  # POST /page_associations.xml
  def create
    @page_association = PageAssociation.new(params[:page_association])

    respond_to do |format|
      if @page_association.save
        flash[:notice] = 'PageAssociation was successfully created.'
        format.html { redirect_to(@page_association) }
        format.xml  { render :xml => @page_association, :status => :created, :location => @page_association }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page_association.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /page_associations/1
  # PUT /page_associations/1.xml
  def update
    @page_association = PageAssociation.find(params[:id])

    respond_to do |format|
      if @page_association.update_attributes(params[:page_association])
        flash[:notice] = 'PageAssociation was successfully updated.'
        format.html { redirect_to(@page_association) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page_association.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /page_associations/1
  # DELETE /page_associations/1.xml
  def destroy
    @page_association = PageAssociation.find(params[:id])
    @page_association.destroy

    respond_to do |format|
      format.html { redirect_to(page_associations_url) }
      format.xml  { head :ok }
    end
  end
end
