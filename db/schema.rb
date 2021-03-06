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

ActiveRecord::Schema.define(:version => 20140514132843) do

  create_table "cambios", :force => true do |t|
    t.integer  "documento_id"
    t.integer  "user_id"
    t.string   "descripcion"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "documento_anexos", :force => true do |t|
    t.string   "numero"
    t.integer  "anio"
    t.date     "fecha"
    t.integer  "tipo_documento_id"
    t.integer  "documento_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "sigla"
    t.text     "observacion"
  end

  create_table "documentos", :force => true do |t|
    t.string   "nro_documento"
    t.integer  "nro_salida"
    t.string   "asunto"
    t.boolean  "autorizado"
    t.text     "observacion"
    t.string   "sigla"
    t.integer  "anio"
    t.date     "fecha_recepcion"
    t.date     "fecha_documento"
    t.date     "fecha_salida"
    t.integer  "tipo_documento_id"
    t.string   "procedencia"
    t.string   "nombres_y_apellidos"
    t.string   "motivo"
    t.string   "destinatario"
    t.string   "iniciado_por"
    t.string   "se_encuentra_en"
    t.integer  "localidad_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "nro_salida_bck"
    t.integer  "nro_anio_salida"
  end

  create_table "localidades", :force => true do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "localidads", :force => true do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regiones", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_permissions", :force => true do |t|
    t.integer  "role_id"
    t.string   "regulator"
    t.string   "conduct"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_roles", :force => true do |t|
    t.integer  "role_id"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tipo_documentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
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
    t.string   "nombres"
    t.string   "apellidos"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "utils", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
