connection: "lucias-sap-bq"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"

datagroup: sap_operational_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

named_value_format: dynamic_format {
  value_format: "[>=1000000000]0.00,,,\"B\";[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
}

persist_with: sap_operational_reporting_default_datagroup

explore: sales_orders {
  join: language_map_pdt {
    fields: []
    type: left_outer
    sql_on: ${language_map_pdt.looker_locale}='{{ _user_attributes['locale'] }}' ;;
    relationship: many_to_one
  }
  join: sales_organizations {
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${sales_orders.sales_organization}=${sales_organizations.sales_org}
            AND ${sales_orders.client}=${sales_organizations.client}
            AND ${sales_organizations.language}=${language_map_pdt.language_key};;
    relationship: many_to_one
  }

  join: customers_md {
    type: left_outer
    sql_on: ${sales_orders.sold_to_party}=${customers_md.customer_number}
            AND ${sales_orders.client}=${customers_md.client}
            AND ${customers_md.language_key}=${language_map_pdt.language_key};;
    relationship: many_to_one
  }

  join: material_md {
    type: left_outer
    sql_on: ${sales_orders.material_number}=${material_md.material_number}
            AND ${sales_orders.client}=${material_md.client}
            and ${material_md.language}=${language_map_pdt.language_key} ;;
    relationship: many_to_one
  }

  join: material_group_md {
    type: left_outer
    sql_on: ${sales_orders.material_group}=${material_group_md.material_group}
            AND ${sales_orders.client}=${material_group_md.client}
            AND ${material_group_md.language}=${language_map_pdt.language_key} ;;
    relationship: many_to_one
  }

  join: material_types_md {
    view_label: "Material"
    type: left_outer
    sql_on: ${material_md.material_type}=${material_types_md.material_type}
    AND ${sales_orders.client}=${material_types_md.client}
    AND ${material_types_md.language_key}=${language_map_pdt.language_key} ;;
    relationship: many_to_one
  }

  join: deliveries {
    type: left_outer
    sql_on: ${deliveries.sales_order_number}=${sales_orders.document_vbeln}
            AND ${deliveries.sales_order_item}=${sales_orders.item} ;;
    relationship: many_to_one
  }

  join: uom_md {
    # view_label: "Sales Orders"
    type: left_outer
    sql_on: ${uom_md.unit_of_measurement}=${sales_orders.base_unit_of_measure}
            AND ${sales_orders.client}=${uom_md.client}
            AND ${uom_md.language_key}=${language_map_pdt.language_key} ;;
    relationship: many_to_one
  }

  join: sd_document_flow {
    type: left_outer
    sql_on: ${sd_document_flow.sales_order}=${sales_orders.sales_document}
            AND ${sd_document_flow.sales_item}=${sales_orders.item}
            AND ${sd_document_flow.client}=${sales_orders.client};;
    relationship: many_to_one
  }

  join: countries_t005_order {
    from: countries_t005
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${countries_t005_order.country_key}=${customers_md.country_key}
            AND ${countries_t005_order.client}=${sales_orders.client}
            AND ${countries_t005_order.language_key}=${language_map_pdt.language_key} ;;
    relationship: many_to_one
  }
  join: countries_t005_customer {
    from: countries_t005
    view_label: "Customers"
    type: left_outer
    sql_on: ${countries_t005_customer.country_key}=${customers_md.country_key}
            AND ${countries_t005_customer.client}=${sales_orders.client}
            AND ${countries_t005_customer.language_key}=${language_map_pdt.language_key} ;;
    relationship: many_to_one
  }


}

explore: sales_fullfillment {
  sql_always_where: ${material_number} is NOT NULL ;;
}

# explore: sales_status_items {}
