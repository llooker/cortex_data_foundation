connection: "lucias-sap-bq"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"

datagroup: sap_operational_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sap_operational_reporting_default_datagroup

explore: sales_orders {
  join: sales_organizations {
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${sales_orders.sales_organization}=${sales_organizations.sales_org} ;;
    relationship: many_to_one
  }

  join: customers_md {
    type: left_outer
    sql_on: ${sales_orders.sold_to_party}=${customers_md.customer_number} AND ${sales_orders.client}=${customers_md.client};;
    relationship: many_to_one
  }

  join: material_md {
    type: left_outer
    sql_on: ${sales_orders.material_number}=${material_md.material_number} AND ${sales_orders.client}=${material_md.client} and ${material_md.language}="E" ;;
    relationship: many_to_one
  }

  join: material_group_md {
    type: left_outer
    sql_on: ${sales_orders.material_group}=${material_group_md.material_group} AND ${sales_orders.client}=${material_group_md.client} and ${material_group_md.language}="E" ;;
    relationship: many_to_one
  }

  join: deliveries {
    type: left_outer
    sql_on: ${deliveries.sales_order_number}=${sales_orders.document_vbeln} AND ${deliveries.sales_order_item}=${sales_orders.item} ;;
    relationship: many_to_one
  }

  join: t005t {
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${t005t.land1}=${customers_md.country_key} AND ${t005t.spras}="E" ;;
    relationship: many_to_one
  }

  join: t005u {
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${t005u.land1}=${customers_md.country_key} AND ${customers_md.region}=${t005u.bland} AND ${t005u.spras}="E" ;;
    relationship: many_to_one
  }

}

explore: sales_fullfillment {
  sql_always_where: ${material_number} is NOT NULL ;;
}

# explore: sales_status_items {}
