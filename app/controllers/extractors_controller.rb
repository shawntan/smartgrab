class ExtractorsController < ApplicationController
	before_filter :login_required	
  # GET /extractors
  # GET /extractors.xml
  def index
    @extractors = current_user.extractors
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @extractors }
    end
  end

  # GET /extractors/1
  # GET /extractors/1.xml
  def show
    @extractor = Extractor.find(params[:id])
    @latest_revision = @extractor.revisions.first(:order => "created_at DESC")
    if(@latest_revision) 
	    @latest_scraped_values = ScrapedValue.find_all_by_revision_id(
	    	@latest_revision.id,
	    	:include => [:annotation]
	    )
    end
    respond_to do |format|
      format.html # show.html.erb
      format.rss  { render :layout => false }
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
        format.html { redirect_to(@extractor, :notice => 'Extractor was successfully created.') }
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
        format.html { redirect_to(@extractor, :notice => 'Extractor was successfully updated.') }
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
