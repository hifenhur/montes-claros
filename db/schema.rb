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

ActiveRecord::Schema.define(:version => 20120906123627) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "banner_images", :force => true do |t|
    t.string   "imagem"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categoria_alimentacaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categoria_lojas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comentario_filmes", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.text     "comentario"
    t.boolean  "autorizado"
    t.integer  "filme_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comentario_filmes", ["filme_id"], :name => "index_comentario_filmes_on_filme_id"

  create_table "comercializacaos", :force => true do |t|
    t.string   "subtitulo"
    t.string   "imagem"
    t.text     "conteudo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comercio_galeries", :force => true do |t|
    t.string   "image"
    t.integer  "comercializacao_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "comercio_galeries", ["comercializacao_id"], :name => "index_comercio_galeries_on_comercializacao_id"

  create_table "curriculos", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.string   "cep"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "cidade"
    t.string   "estado"
    t.string   "area_de_atuacao"
    t.text     "descricao"
    t.string   "documento"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "download_imprensas", :force => true do |t|
    t.string   "titulo"
    t.string   "mes"
    t.string   "arquivo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.text     "conteudo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
    t.string   "url_youtube"
  end

  create_table "filmes", :force => true do |t|
    t.string   "titulo"
    t.text     "elenco"
    t.text     "sinopse"
    t.string   "trailer"
    t.integer  "presenca"
    t.string   "imagem"
    t.string   "genero"
    t.string   "classificacao"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "homeimage"
    t.boolean  "home_slider"
  end

  create_table "footers", :force => true do |t|
    t.string   "nome_do_shopping"
    t.string   "endereco"
    t.string   "cep"
    t.string   "email_sac"
    t.string   "telefone"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "horario_infs", :force => true do |t|
    t.integer  "horario_id"
    t.string   "nome"
    t.string   "informacao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "horario_infs", ["horario_id"], :name => "index_horario_infs_on_horario_id"

  create_table "horarios", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "imprensas", :force => true do |t|
    t.string   "imagem"
    t.text     "conteudo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "informacaos", :force => true do |t|
    t.string   "nome"
    t.string   "nome_empresa"
    t.string   "telefone"
    t.string   "email"
    t.string   "assunto"
    t.text     "mensagem"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "ingressos", :force => true do |t|
    t.string   "nome"
    t.string   "meia"
    t.string   "inteira"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lazers", :force => true do |t|
    t.string   "imagem"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "loja_alimentacaos", :force => true do |t|
    t.string   "nome"
    t.string   "image"
    t.text     "descricao"
    t.string   "telefone"
    t.string   "piso"
    t.integer  "categoria_alimentacao_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "lojas", :force => true do |t|
    t.string   "nome"
    t.string   "foto"
    t.text     "descricao"
    t.string   "telefone"
    t.integer  "categoria_loja_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "lojas_em_destaques", :force => true do |t|
    t.string   "nome"
    t.string   "imagem"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "newsletters", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notices", :force => true do |t|
    t.string   "titulo"
    t.string   "image"
    t.string   "url_youtube"
    t.text     "descricao"
    t.text     "conteudo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "o_shoppings", :force => true do |t|
    t.string   "subtitulo"
    t.string   "imagem"
    t.text     "conteudo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pg_search_documents", :force => true do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "promocaos", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.text     "conteudo"
    t.string   "image"
    t.string   "url_youtube"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "salas", :force => true do |t|
    t.string   "nome"
    t.string   "fh1"
    t.string   "fh2"
    t.string   "fh3"
    t.string   "fh4"
    t.string   "fh5"
    t.string   "sh1"
    t.string   "sh2"
    t.string   "sh3"
    t.string   "sh4"
    t.string   "sh5"
    t.boolean  "legendado"
    t.boolean  "tresD"
    t.integer  "filme_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "servicos", :force => true do |t|
    t.string   "nome"
    t.string   "imagem"
    t.text     "descricao"
    t.string   "horario"
    t.string   "localizacao"
    t.string   "telefone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shopping_comments", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.text     "comentario"
    t.integer  "o_shopping_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "aceito"
  end

  add_index "shopping_comments", ["o_shopping_id"], :name => "index_shopping_comments_on_o_shopping_id"

  create_table "usuarios", :force => true do |t|
    t.string   "ip"
    t.integer  "filme_id"
    t.boolean  "votou"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
