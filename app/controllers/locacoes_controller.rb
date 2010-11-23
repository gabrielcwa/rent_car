# encoding: utf-8
class LocacoesController < ApplicationController
  def index
    query = Locacao.scoped
    
    query = query.where(cliente_id: params[:cliente]) unless params[:cliente].blank?
    query = query.where(carro_id: params[:carro]) unless params[:carro].blank?
    query = query.where('data_locacao LIKE ?', "#{params[:data_locacao]}%") unless params[:data_locacao].blank?
    query = query.where('data_entrega LIKE ?', "#{params[:data_entrega]}%") unless params[:data_entrega].blank?
    query = query.where('valor LIKE ?', "#{params[:valor]}%") unless params[:valor].blank?
    
    @locacoes = query.all
    

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @locacoes }
    end
  end

  def new
    @locacao = Locacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @locacao }
    end
  end
  
  def edit
    @locacao = Locacao.find(params[:id])
  end
  
  def destroy
    @locacao = Locacao.find(params[:id])
    @locacao.destroy

    respond_to do |format|
      format.html { redirect_to(locacoes_url) }
      format.xml  { head :ok }
    end
  end
  
  def show
    @locacao = Locacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @locacao }
    end
  end
  
  def create
    @locacao = Locacao.new(params[:locacao])

    respond_to do |format|
      if @locacao.save
        format.html { redirect_to(@locacao, :notice => 'Locacao realizada com sucesso.') }
        format.xml  { render :xml => @locacao, :status => :created, :location => @locacao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @locacao.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def update
    @locacao = Locacao.find(params[:id])

    respond_to do |format|
      if @locacao.update_attributes(params[:locacao])
        format.html { redirect_to(@locacao, :notice => 'Locação atualizada com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @locacao.errors, :status => :unprocessable_entity }
      end
    end
  end
end
