class TilesController < ApplicationController
  before_filter :find_map
  # GET /tiles
  # GET /tiles.xml
  def index
    @tiles = @map.tiles

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tiles }
    end
  end

  # GET /tiles/1
  # GET /tiles/1.xml
  def show
    @tile = Tile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tile }
    end
  end

  # GET /tiles/new
  # GET /tiles/new.xml
  def new
    @tile = Tile.new
    @tile.map = @map

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tile }
    end
  end

  # GET /tiles/1/edit
  def edit
    @tile = Tile.find(params[:id])
    @tile.map = @map
  end

  # POST /tiles
  # POST /tiles.xml
  def create
    @tile = Tile.new(params[:tile])
    @tile.map = @map

    respond_to do |format|
      if @tile.save
        flash[:notice] = 'Tile was successfully created.'
        format.html { redirect_to([@map, @tile]) }
        format.xml  { render :xml => @tile, :status => :created, :location => @tile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tiles/1
  # PUT /tiles/1.xml
  def update
    @tile = Tile.find(params[:id])
    @tile.map = @map

    respond_to do |format|
      if @tile.update_attributes(params[:tile])
        flash[:notice] = 'Tile was successfully updated.'
        format.html { redirect_to(@tile) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tiles/1
  # DELETE /tiles/1.xml
  def destroy
    @tile = Tile.find(params[:id])
    @tile.destroy

    respond_to do |format|
      format.html { redirect_to(tiles_url) }
      format.xml  { head :ok }
    end
  end

private
  def find_map
    @map = Map.find params[:map_id]
  end

end
