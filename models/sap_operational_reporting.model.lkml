connection: "lucias-sap-bq"

# include all the views
include: "/views/**/*.view"

datagroup: sap_operational_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sap_operational_reporting_default_datagroup


# client_mandt used for all joins?
# what are the most common fields to use for the reports

explore: sales_orders {
  join: sales_organizations {
    type: left_outer
    sql_on: ${sales_orders.sales_organization_vkorg}=${sales_organizations.sales_org_vkorg} ;;
    relationship: many_to_one
  }

  join: customers_md {
    type: left_outer
    sql_on: ${sales_orders.sold_to_party_kunnr}=${customers_md.customer_number_kunnr} AND ${sales_orders.client_mandt}=${customers_md.client_mandt};;
    relationship: many_to_one
  }

  join: material_md {
    type: left_outer
    sql_on: ${sales_orders.material_number_matnr}=${material_md.material_number_matnr} AND ${sales_orders.client_mandt}=${material_md.client_mandt} and ${material_md.language_spras}="E" ;;
    relationship: many_to_one
  }

  join: material_group_md {
    type: left_outer
    sql_on: ${sales_orders.material_group_matkl}=${material_group_md.material_group_matkl} AND ${sales_orders.client_mandt}=${material_group_md.client_mandt} and ${material_group_md.language}="E" ;;
    relationship: many_to_one
  }

  join: deliveries {
    type: left_outer
    sql_on: ${deliveries.sales_order_number_vgbel}=${sales_orders.document_vbeln} AND ${deliveries.sales_order_item_vgpos}=${sales_orders.item_posnr} ;;
    relationship: many_to_one
  }

  join: t005t {
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${t005t.land1}=${customers_md.country_key_land1} AND ${t005t.spras}="E" ;;
    relationship: many_to_one
  }

  join: t005u {
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${t005u.land1}=${customers_md.country_key_land1} AND ${customers_md.region_regio}=${t005u.bland} AND ${t005u.spras}="E" ;;
    relationship: many_to_one
  }

}


explore: sales_fullfillment {
  sql_always_where: ${material_number} is NOT NULL ;;
  # join: sales_status_items {
  #   type: left_outer
  #   sql_on: ${sales_fullfillment.currency}=${sales_status_items.currency}
  #       AND ${sales_fullfillment.delivered_uom}=${sales_status_items.delivered_uom}
  #       AND ${sales_fullfillment.sales_unit}=${sales_status_items.sales_unit}
  #       AND ${sales_fullfillment.material_number}=${sales_status_items.material_number};;
  # }
}

explore: sales_status_items {}
