# The name of this view in Looker is "Stock Unrestricted Vs Sales"
view: stock_unrestricted_vs_sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lucias-rabia.SAP_REPORTING.Stock_Unrestricted_vs_Sales`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Base Unit of Measure Meins" in Explore.


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
      # url: "/dashboards-next/sap_operational_reporting::3_customer_details?Customer%20Details={{ filterable_value }}"
      url: "/dashboards-next/41?Plant%20Region={{ filterable_value }}"
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

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    hidden: yes
    type: count
    drill_fields: [plant_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.


  measure: total_pending_delivery {
    # hidden: yes
    type: sum
    sql: ${pending_delivery} ;;
    html: <a href="#drillmenu" target="_self"> @{BigNumbers_format};;
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
    html: <a href="#drillmenu" target="_self"> @{BigNumbers_format};;
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
    html: <a href="#drillmenu" target="_self"> @{BigNumbers_format};;
    drill_fields: [material_md.material_number, material_md.material_text,stock_vs_pending_deliveries]
  }
}
