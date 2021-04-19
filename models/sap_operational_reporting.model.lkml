connection: "lucias-sap-bq"

# include all the views
include: "/views/**/*.view"

datagroup: sap_operational_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sap_operational_reporting_default_datagroup


# client_mandt used for all joins?

explore: sales_orders {

  join: customers_md {
    type: left_outer
    sql: ${sales_orders.sold_to_party_kunnr}=${customers_md.customer_number_kunnr} AND ${sales_orders.client_mandt}=${customers_md.client_mandt};;
    relationship: many_to_one
  }

  join: material_md {
    type: left_outer
    sql: ${sales_orders.material_number_matnr}=${material_md.material_number} AND ${sales_orders.client_mandt}=${customers_md.client_mandt} and ${material_md.language}="E" ;;
    relationship: many_to_one
  }

  join: material_group_md {
    type: left_outer
    sql: ${sales_orders.material_group_matkl}=${material_group_md.material_group_matkl} AND ${sales_orders.client_mandt}=${customers_md.client_mandt} and ${material_md.language}="E" ;;
    relationship: many_to_one
  }

}


# explore: company {}

# explore: currency {}

# explore: currency_conv_util {}

# explore: currency_md {}

# explore: customers_md {}

# explore: deliveries {}

# explore: deliveries_status {}

# explore: glaccounting_hdr_r3 {}

# explore: ledger_md {}

# explore: material_group_md {}

# explore: material_md {}

# explore: material_valuation_stock_changes {}

# explore: materials {}

# explore: product_hierarchy_flattened {}

# explore: profit_ctr {}

# explore: purchase_documents_hdr {}

# explore: purchase_documents_items {}

# explore: sales_organizations {}

# explore: sdstatus {}

# explore: time_dim {}

# explore: vendors {}
