class TelemetriesController < ApplicationController
  # GET /telemetries
  # GET /telemetries.xml
  def index
    @telemetries = Telemetry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @telemetries }
    end
  end

  # GET /telemetries/1
  # GET /telemetries/1.xml
  def show
    @telemetry = Telemetry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @telemetry }
    end
  end

  # GET /telemetries/new
  # GET /telemetries/new.xml
  def new
    @telemetry = Telemetry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @telemetry }
    end
  end

  # GET /telemetries/1/edit
  def edit
    @telemetry = Telemetry.find(params[:id])
  end

  # POST /telemetries
  # POST /telemetries.xml
  def create
    @telemetry = Telemetry.new(params[:telemetry])

    respond_to do |format|
      if @telemetry.save
        format.html { redirect_to(@telemetry, :notice => 'Telemetry was successfully created.') }
        format.xml  { render :xml => @telemetry, :status => :created, :location => @telemetry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @telemetry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /telemetries/1
  # PUT /telemetries/1.xml
  def update
    @telemetry = Telemetry.find(params[:id])

    respond_to do |format|
      if @telemetry.update_attributes(params[:telemetry])
        format.html { redirect_to(@telemetry, :notice => 'Telemetry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @telemetry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /telemetries/1
  # DELETE /telemetries/1.xml
  def destroy
    @telemetry = Telemetry.find(params[:id])
    @telemetry.destroy

    respond_to do |format|
      format.html { redirect_to(telemetries_url) }
      format.xml  { head :ok }
    end
  end
end
