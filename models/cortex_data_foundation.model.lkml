connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"

datagroup: cortex_data_foundation_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: cortex_data_foundation_default_datagroup

explore: sales_orders {

  sql_always_where: ${sales_orders.client}='{{ _user_attributes['sap_client_mandt'] }}' ;;

  join: language_map {
    fields: []
    type: left_outer
    sql_on: ${language_map.looker_locale}='{{ _user_attributes['locale'] }}' ;;
    relationship: many_to_one
  }

  join: sales_organizations {
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${sales_orders.sales_organization}=${sales_organizations.sales_org}
            AND ${sales_orders.client}=${sales_organizations.client}
            AND ${sales_organizations.language}=${language_map.language_key};;
    relationship: many_to_one
  }

  join: customers_md {
    type: left_outer
    sql_on: ${customers_md.customer_number}=${sales_orders.sold_to_party}
            AND ${customers_md.client}=${sales_orders.client};;
    relationship: many_to_one
  }

  join: countries_t005_customer {
    from: countries_t005
    view_label: "Customers"
    type: left_outer
    sql_on: ${countries_t005_customer.country_key}=${customers_md.country_key}
            AND ${countries_t005_customer.client}=${customers_md.client}
            AND ${countries_t005_customer.language_key}=${language_map.language_key} ;;
    relationship: many_to_one
  }

  join: material_md {
    type: left_outer
    sql_on: ${material_md.material_number}=${sales_orders.material_number}
            AND ${material_md.client}=${sales_orders.client}
            AND ${material_md.language}=${language_map.language_key} ;;
    relationship: many_to_one
  }

  join: material_group_md {
    view_label: "Product"
    type: left_outer
    sql_on: ${sales_orders.material_group}=${material_group_md.material_group}
            AND ${sales_orders.client}=${material_group_md.client}
            AND ${material_group_md.language}=${language_map.language_key} ;;
    relationship: many_to_one
  }

  join: product_hierarchy_md {
    view_label: "Product"
    type: left_outer
    sql_on: ${product_hierarchy_md.client}=${sales_orders.client}
            AND ${product_hierarchy_md.hierarchy}=${sales_orders.product_hierarchy}
            AND ${product_hierarchy_md.language}=${language_map.language_key}
            AND ${product_hierarchy_md.level}='3';;
    relationship: many_to_one
  }

  join: uom_md {
    view_label: "Product"
    type: left_outer
    sql_on: ${uom_md.unit_of_measurement}=${sales_orders.base_unit_of_measure}
            AND ${uom_md.client}=${sales_orders.client}
            AND ${uom_md.language_key}=${language_map.language_key} ;;
    relationship: many_to_one
  }

  join: stock_unrestricted_vs_sales {
    view_label: "Product"
    type: left_outer
    sql_on: ${stock_unrestricted_vs_sales.material_number}=${sales_orders.material_number}
            AND ${stock_unrestricted_vs_sales.client}=${sales_orders.client}
            AND ${stock_unrestricted_vs_sales.plant}=${sales_orders.plant}
            AND ${stock_unrestricted_vs_sales.storage_location}=${sales_orders.storage_location}
            AND ${stock_unrestricted_vs_sales.language}=${language_map.language_key} ;;
    relationship: many_to_one
  }

  join: deliveries {
    type: left_outer
    sql_on: ${deliveries.sales_order_number}=${sales_orders.sales_document}
            AND ${deliveries.sales_order_item}=${sales_orders.item}
            AND ${deliveries.client}=${sales_orders.client};;
    relationship: many_to_one
  }

  join: customers_md_ship_to {
    from: customers_md
    view_label: "Deliveries"
    fields: [customers_md_ship_to.city,customers_md_ship_to.address,customers_md_ship_to.postal_code]
    type: left_outer
    sql_on: ${customers_md_ship_to.customer_number}=${deliveries.ship_to_party}
            AND ${customers_md_ship_to.client}=${deliveries.client}
            AND ${customers_md_ship_to.language_key}=${language_map.language_key};;
    relationship: many_to_one
  }

  join: countries_t005_delivery {
    from: countries_t005
    view_label: "Deliveries"
    type: left_outer
    sql_on: ${countries_t005_delivery.country_key}=${customers_md_ship_to.country_key}
            AND ${countries_t005_delivery.client}=${customers_md_ship_to.client}
            AND ${countries_t005_delivery.language_key}=${language_map.language_key} ;;
    relationship: many_to_one
  }

  join: sales_pending_delivery_per_order {
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${sales_pending_delivery_per_order.client}=${sales_orders.client}
            AND ${sales_pending_delivery_per_order.sales_order}=${sales_orders.sales_document}
            AND ${sales_pending_delivery_per_order.language}=${language_map.language_key} ;;
    relationship: many_to_one
  }

  join: sales_pending_delivery_per_order_item {
    view_label: "Sales Orders"
    type: left_outer
    sql_on: ${sales_pending_delivery_per_order_item.client}=${sales_orders.client}
            AND ${sales_pending_delivery_per_order_item.sales_order}=${sales_orders.sales_document}
            AND ${sales_pending_delivery_per_order_item.sales_item}=${sales_orders.item}
            AND ${sales_pending_delivery_per_order_item.language}=${language_map.language_key} ;;
    relationship: many_to_one
  }

  join: top_5_product_category {
    type: inner
    sql_on: ${product_hierarchy_md.product_category} = ${top_5_product_category.product_category} ;;
    relationship: many_to_one
  }
}


explore: sales_fulfillment_per_order {
  hidden: yes
  sql_always_where: ${sales_fulfillment_per_order.client}='{{ _user_attributes['sap_client_mandt'] }}' ;;
}
