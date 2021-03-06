# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101123030509) do

  create_table "carros", :force => true do |t|
    t.string   "marca"
    t.string   "modelo"
    t.string   "ano"
    t.string   "placa"
    t.string   "ano_aquisicao"
    t.string   "cor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "nome_pai"
    t.string   "nome_mae"
    t.string   "data_nascimento"
    t.string   "telefone"
    t.string   "cpf"
    t.string   "habilitacao"
    t.string   "naturalidade"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "bairro"
    t.string   "municipio"
    t.string   "cep"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locacoes", :force => true do |t|
    t.integer  "carro_id"
    t.integer  "cliente_id"
    t.string   "data_locacao"
    t.string   "data_entrega"
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
