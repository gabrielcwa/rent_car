module LocacoesHelper

  def select_clientes(attr_name, options={}, html_options={})
    select_options = options_from_collection_for_select(Cliente.all, 'id', 'nome', options[:selected])
    
    if options.key?(:form)
      options[:form].select attr_name, select_options, html_options
    else
      select_tag attr_name, select_options, html_options
    end
  end
  
  def select_carros(attr_name, options={}, html_options={})
    select_options = options_from_collection_for_select(Carro.all, 'id', 'marca', options[:selected])
    
    if options.key?(:form)
      options[:form].select attr_name, select_options, html_options
    else
      select_tag attr_name, select_options, html_options
    end
  end
end

