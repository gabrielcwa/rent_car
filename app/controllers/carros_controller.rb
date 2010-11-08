class CarrosController < ApplicationController
  # GET /carros
  # GET /carros.xml
  def index
    @carros = Carro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @carros }
    end
  end

  # GET /carros/1
  # GET /carros/1.xml
  def show
    @carro = Carro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @carro }
    end
  end

  # GET /carros/new
  # GET /carros/new.xml
  def new
    @carro = Carro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @carro }
    end
  end

  # GET /carros/1/edit
  def edit
    @carro = Carro.find(params[:id])
  end

  # POST /carros
  # POST /carros.xml
  def create
    @carro = Carro.new(params[:carro])

    respond_to do |format|
      if @carro.save
        format.html { redirect_to(@carro, :notice => 'Carro criado com sucesso.') }
        format.xml  { render :xml => @carro, :status => :created, :location => @carro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @carro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carros/1
  # PUT /carros/1.xml
  def update
    @carro = Carro.find(params[:id])

    respond_to do |format|
      if @carro.update_attributes(params[:carro])
        format.html { redirect_to(@carro, :notice => 'Carro atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @carro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carros/1
  # DELETE /carros/1.xml
  def destroy
    @carro = Carro.find(params[:id])
    @carro.destroy

    respond_to do |format|
      format.html { redirect_to(carros_url) }
      format.xml  { head :ok }
    end
  end
end
