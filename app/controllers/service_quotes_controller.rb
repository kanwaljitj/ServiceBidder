class ServiceQuotesController < ApplicationController
  # GET /service_quotes
  # GET /service_quotes.xml
  def index
    @service_quotes = ServiceQuote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_quotes }
    end
  end

  # GET /service_quotes/1
  # GET /service_quotes/1.xml
  def show
    @service_quote = ServiceQuote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_quote }
    end
  end

  # GET /service_quotes/new
  # GET /service_quotes/new.xml
  def new
    @service_quote = ServiceQuote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_quote }
    end
  end

  # GET /service_quotes/1/edit
  def edit
    @service_quote = ServiceQuote.find(params[:id])
  end

  # POST /service_quotes
  # POST /service_quotes.xml
  def create
    @service_quote = ServiceQuote.new(params[:service_quote])

    respond_to do |format|
      if @service_quote.save
        format.html { redirect_to(@service_quote, :notice => 'Service quote was successfully created.') }
        format.xml  { render :xml => @service_quote, :status => :created, :location => @service_quote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service_quote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /service_quotes/1
  # PUT /service_quotes/1.xml
  def update
    @service_quote = ServiceQuote.find(params[:id])

    respond_to do |format|
      if @service_quote.update_attributes(params[:service_quote])
        format.html { redirect_to(@service_quote, :notice => 'Service quote was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_quote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /service_quotes/1
  # DELETE /service_quotes/1.xml
  def destroy
    @service_quote = ServiceQuote.find(params[:id])
    @service_quote.destroy

    respond_to do |format|
      format.html { redirect_to(service_quotes_url) }
      format.xml  { head :ok }
    end
  end
end
