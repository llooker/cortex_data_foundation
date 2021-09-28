view: stock_unrestricted_vs_sales {
  sql_table_name: `@{DATASET}.Stock_Unrestricted_vs_Sales`;;

  dimension: stock_unrestricted_vs_sales_pk {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${client}," - ", ${material_number}," - ", ${plant}," - ", ${storage_location}," - ", ${language}) ;;
  }

  dimension: base_unit_of_measure {
    hidden: yes
    type: string
    sql: ${TABLE}.BaseUnitOfMeasure_MEINS ;;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: language {
    hidden: yes
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: material_number {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
  }

  dimension: material_text {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialText_MAKTX ;;
  }

  dimension: pending_delivery {
    hidden: yes
    type: number
    sql: ${TABLE}.PendingDelivery ;;
  }

  dimension: plant_country {
    hidden: yes
    type: string
    sql: ${TABLE}.Plant_Country ;;
  }

  dimension: plant_name {
    hidden: yes
    type: string
    sql: ${TABLE}.Plant_Name ;;
  }

  dimension: plant_region {
    type: string
    sql: ${TABLE}.Plant_Region ;;
    link: {
      label: "Order Fulfilment for Plant"
      url: "/dashboards-next/cortex_data_foundation::order_fulfillment?Plant%20Region={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: plant {
    hidden: yes
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: product_hierarchy {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductHierarchy_PRDHA ;;
  }

  dimension: storage_location {
    hidden: yes
    type: string
    sql: ${TABLE}.StorageLocation_LGORT ;;
  }

  dimension: unrestricted_stock {
    hidden: yes
    type: number
    sql: ${TABLE}.UnrestrictedStock ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [plant_name]
  }

  measure: total_pending_delivery {
    type: sum
    sql: ${pending_delivery} ;;
    # html: <a href="#drillmenu" target="_self"> @{BigNumbers_format};;
    html: <a href="#drillmenu" target="_self">
    {% if value < 0 %}
    {% assign abs_value = value | times: -1.0 %}
    {% assign pos_neg = '-' %}
    {% else %}
    {% assign abs_value = value | times: 1.0 %}
    {% assign pos_neg = '' %}
    {% endif %}

    {% if abs_value >=1000000000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000000000.0 | round: 2 }}B
    {% elsif abs_value >=1000000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000000.0 | round: 2 }}M
    {% elsif abs_value >=1000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000.0 | round: 2 }}K
    {% else %}
    {{pos_neg}}{{ abs_value }}
    {% endif %}
    ;;
  }

  measure: average_pending_delivery {
    type: average
    hidden: yes
    sql: ${pending_delivery} ;;
  }

  measure: total_unrestricted_stock {
    description: "This is the current snapshot of the unrestricted stock available. It is not assigned to a specific order."
    type: sum
    sql: ${unrestricted_stock} ;;
    # html: <a href="#drillmenu" target="_self"> @{BigNumbers_format};;
    html: <a href="#drillmenu" target="_self">
    {% if value < 0 %}
    {% assign abs_value = value | times: -1.0 %}
    {% assign pos_neg = '-' %}
    {% else %}
    {% assign abs_value = value | times: 1.0 %}
    {% assign pos_neg = '' %}
    {% endif %}

    {% if abs_value >=1000000000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000000000.0 | round: 2 }}B
    {% elsif abs_value >=1000000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000000.0 | round: 2 }}M
    {% elsif abs_value >=1000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000.0 | round: 2 }}K
    {% else %}
    {{pos_neg}}{{ abs_value }}
    {% endif %}
    ;;
    drill_fields: [material_md.material_number, material_md.material_text,total_unrestricted_stock]
  }

  measure: average_unrestricted_stock {
    type: average
    hidden: yes
    sql: ${unrestricted_stock} ;;
  }

  measure: stock_vs_pending_deliveries {
    label: "Stock vs Pending Deliveries Delta"
    description: "This is the current snapshot of the unrestricted stock available compared to all the pending orders. It is not assigned to a specific order."
    type: number
    sql: ${total_unrestricted_stock}-${total_pending_delivery} ;;
    # html: <a href="#drillmenu" target="_self"> @{BigNumbers_format};;
    html: <a href="#drillmenu" target="_self">
    {% if value < 0 %}
    {% assign abs_value = value | times: -1.0 %}
    {% assign pos_neg = '-' %}
    {% else %}
    {% assign abs_value = value | times: 1.0 %}
    {% assign pos_neg = '' %}
    {% endif %}

    {% if abs_value >=1000000000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000000000.0 | round: 2 }}B
    {% elsif abs_value >=1000000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000000.0 | round: 2 }}M
    {% elsif abs_value >=1000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000.0 | round: 2 }}K
    {% else %}
    {{pos_neg}}{{ abs_value }}
    {% endif %}
    ;;
    drill_fields: [material_md.material_number, material_md.material_text,stock_vs_pending_deliveries]
  }
}
