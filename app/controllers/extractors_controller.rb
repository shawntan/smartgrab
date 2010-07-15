class ExtractorsController < ApplicationController
  # GET /extractors
  # GET /extractors.xml
  def index
    @extractors = Extractor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @extractors }
    end
  end

  # GET /extractors/1
  # GET /extractors/1.xml
  def show
    @extractor = Extractor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @extractor }
    end
  end

  # GET /extractors/new
  # GET /extractors/new.xml
  def new
    @extractor = Extractor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @extractor }
    end
  end

  # GET /extractors/1/edit
  def edit
    @extractor = Extractor.find(params[:id])
  end

  # POST /extractors
  # POST /extractors.xml
  def create
    @extractor = Extractor.new(params[:extractor])

    respond_to do |format|
      if @extractor.save
        flash[:notice] = 'Extractor was successfully created.'
        format.html { redirect_to(@extractor) }
        format.xml  { render :xml => @extractor, :status => :created, :location => @extractor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @extractor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /extractors/1
  # PUT /extractors/1.xml
  def update
    @extractor = Extractor.find(params[:id])

    respond_to do |format|
      if @extractor.update_attributes(params[:extractor])
        flash[:notice] = 'Extractor was successfully updated.'
        format.html { redirect_to(@extractor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @extractor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /extractors/1
  # DELETE /extractors/1.xml
  def destroy
    @extractor = Extractor.find(params[:id])
    @extractor.destroy

    respond_to do |format|
      format.html { redirect_to(extractors_url) }
      format.xml  { head :ok }
    end
  end
end