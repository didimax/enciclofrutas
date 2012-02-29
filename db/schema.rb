# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120229122832) do

  create_table "fruta", :force => true do |t|
    t.string   "nome"
    t.string   "nome_cientifico"
    t.string   "peso"
    t.string   "cor"
    t.string   "preco"
    t.string   "localizacao"
    t.string   "calorias"
    t.string   "informacao"
    t.integer  "moderador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fruta", ["moderador_id"], :name => "index_fruta_on_moderador_id"

  create_table "frutas", :force => true do |t|
    t.string   "nome"
    t.string   "nome_cientifico"
    t.string   "peso"
    t.string   "cor"
    t.string   "preco"
    t.string   "localizacao"
    t.string   "calorias"
    t.string   "informacao"
    t.integer  "moderador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "frutas", ["moderador_id"], :name => "index_frutas_on_moderador_id"

  create_table "moderadors", :force => true do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "senha"
    t.string   "pais"
    t.string   "cidade"
    t.string   "genero"
    t.string   "data_nasc"
    t.string   "cpf"
    t.string   "rg"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
