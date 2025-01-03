# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_01_03_173050) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avaliacaos", force: :cascade do |t|
    t.bigint "produto_id", null: false
    t.integer "nota"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_avaliacaos_on_produto_id"
  end

  create_table "categoria", force: :cascade do |t|
    t.bigint "estabelecimento_id", null: false
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estabelecimento_id"], name: "index_categoria_on_estabelecimento_id"
  end

  create_table "categories", force: :cascade do |t|
    t.bigint "establishment_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["establishment_id"], name: "index_categories_on_establishment_id"
  end

  create_table "estabelecimentos", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "nome"
    t.string "tipo"
    t.json "tema"
    t.json "redes_sociais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_estabelecimentos_on_user_id"
  end

  create_table "establishments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "slug"
    t.string "type"
    t.json "theme"
    t.json "social_links"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_establishments_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "establishment_id", null: false
    t.bigint "customer_id", null: false
    t.decimal "total_price", precision: 10, scale: 2, null: false
    t.string "status", null: false
    t.string "delivery_method", null: false
    t.string "delivery_address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["establishment_id"], name: "index_orders_on_establishment_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "estabelecimento_id", null: false
    t.bigint "cliente_id", null: false
    t.decimal "total_preco"
    t.string "status"
    t.string "metodo_entrega"
    t.string "endereco_entrega"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
    t.index ["estabelecimento_id"], name: "index_pedidos_on_estabelecimento_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.boolean "promotion_active"
    t.decimal "promotion_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.bigint "categoria_id", null: false
    t.string "nome"
    t.text "descricao"
    t.decimal "preco"
    t.boolean "promocao_ativa"
    t.decimal "preco_promocional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_id"], name: "index_produtos_on_categoria_id"
  end

  create_table "promocaos", force: :cascade do |t|
    t.bigint "estabelecimento_id", null: false
    t.string "titulo"
    t.text "descricao"
    t.datetime "data_inicio"
    t.datetime "data_fim"
    t.boolean "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estabelecimento_id"], name: "index_promocaos_on_estabelecimento_id"
  end

  create_table "promotion_products", force: :cascade do |t|
    t.bigint "promotion_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_promotion_products_on_product_id"
    t.index ["promotion_id"], name: "index_promotion_products_on_promotion_id"
  end

  create_table "promotions", force: :cascade do |t|
    t.bigint "establishment_id", null: false
    t.string "title"
    t.text "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["establishment_id"], name: "index_promotions_on_establishment_id"
  end

  create_table "relatorio_de_vendas", force: :cascade do |t|
    t.bigint "estabelecimento_id", null: false
    t.date "data"
    t.json "dados"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estabelecimento_id"], name: "index_relatorio_de_vendas_on_estabelecimento_id"
  end

  create_table "reservas", force: :cascade do |t|
    t.bigint "estabelecimento_id", null: false
    t.string "nome_cliente"
    t.string "telefone_cliente"
    t.date "data"
    t.time "hora"
    t.integer "quantidade_pessoas"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estabelecimento_id"], name: "index_reservas_on_estabelecimento_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "establishment_id", null: false
    t.string "customer_name"
    t.string "customer_phone"
    t.date "date"
    t.time "time"
    t.integer "people_count"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["establishment_id"], name: "index_reservations_on_establishment_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_reviews_on_product_id"
  end

  create_table "sales_reports", force: :cascade do |t|
    t.bigint "establishment_id", null: false
    t.date "report_date"
    t.json "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["establishment_id"], name: "index_sales_reports_on_establishment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "avaliacaos", "produtos"
  add_foreign_key "categoria", "estabelecimentos"
  add_foreign_key "categories", "establishments"
  add_foreign_key "estabelecimentos", "users"
  add_foreign_key "establishments", "users"
  add_foreign_key "orders", "establishments"
  add_foreign_key "orders", "users", column: "customer_id"
  add_foreign_key "pedidos", "estabelecimentos"
  add_foreign_key "pedidos", "users", column: "cliente_id"
  add_foreign_key "products", "categories"
  add_foreign_key "produtos", "categoria", column: "categoria_id"
  add_foreign_key "promocaos", "estabelecimentos"
  add_foreign_key "promotion_products", "products"
  add_foreign_key "promotion_products", "promotions"
  add_foreign_key "promotions", "establishments"
  add_foreign_key "relatorio_de_vendas", "estabelecimentos"
  add_foreign_key "reservas", "estabelecimentos"
  add_foreign_key "reservations", "establishments"
  add_foreign_key "reviews", "products"
  add_foreign_key "sales_reports", "establishments"
end
