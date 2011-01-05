class ScrapedValuesController < ApplicationController
  # GET /scraped_values
  # GET /scraped_values.xml
  def index
    @scraped_values = ScrapedValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scraped_values }
    end
  end

  # GET /scraped_values/1
  # GET /scraped_values/1.xml
  def show
    @scraped_value = ScrapedValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scraped_value }
    end
  end

  # GET /scraped_values/new
  # GET /scraped_values/new.xml
  def new
    @scraped_value = ScrapedValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scraped_value }
    end
  end

  # GET /scraped_values/1/edit
  def edit
    @scraped_value = ScrapedValue.find(params[:id])
  end

  # POST /scraped_values
  # POST /scraped_values.xml
  def create
    @scraped_value = ScrapedValue.new(params[:scraped_value])

    respond_to do |format|
      if @scraped_value.save
        format.html { redirect_to(@scraped_value, :notice => 'ScrapedValue was successfully created.') }
        format.xml  { render :xml => @scraped_value, :status => :created, :location => @scraped_value }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scraped_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scraped_values/1
  # PUT /scraped_values/1.xml
  def update
    @scraped_value = ScrapedValue.find(params[:id])

    respond_to do |format|
      if @scraped_value.update_attributes(params[:scraped_value])
        format.html { redirect_to(@scraped_value, :notice => 'ScrapedValue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scraped_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scraped_values/1
  # DELETE /scraped_values/1.xml
  def destroy
    @scraped_value = ScrapedValue.find(params[:id])
    @scraped_value.destroy

    respond_to do |format|
      format.html { redirect_to(scraped_values_url) }
      format.xml  { head :ok }
    end
  end
end
