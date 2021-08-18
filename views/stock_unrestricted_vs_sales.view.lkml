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

  dimension: base_unit_of_measure_meins {
    type: string
    sql: ${TABLE}.BaseUnitOfMeasure_MEINS ;;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: delivered_qty {
    type: number
    sql: ${TABLE}.DeliveredQty ;;
  }

  dimension: delivered_uo_m_meins {
    type: string
    sql: ${TABLE}.DeliveredUoM_MEINS ;;
  }

  dimension: language_spras {
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: material_number_matnr {
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
  }

  dimension: material_text_maktx {
    type: string
    sql: ${TABLE}.MaterialText_MAKTX ;;
  }

  dimension: pending_delivery {
    type: number
    sql: ${TABLE}.PendingDelivery ;;
  }

  dimension: plant_country {
    type: string
    sql: ${TABLE}.Plant_Country ;;
  }

  dimension: plant_name {
    type: string
    sql: ${TABLE}.Plant_Name ;;
  }

  dimension: plant_region {
    type: string
    sql: ${TABLE}.Plant_Region ;;
  }

  dimension: plant_werks {
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: plant_werks_1 {
    type: string
    sql: ${TABLE}.Plant_WERKS_1 ;;
  }

  dimension: product_hierarchy_prdha {
    type: string
    sql: ${TABLE}.ProductHierarchy_PRDHA ;;
  }

  dimension: sales_qty {
    type: number
    sql: ${TABLE}.SalesQty ;;
  }

  dimension: storage_location_lgort {
    type: string
    sql: ${TABLE}.StorageLocation_LGORT ;;
  }

  dimension: storage_location_lgort_1 {
    type: string
    sql: ${TABLE}.StorageLocation_LGORT_1 ;;
  }

  dimension: unrestricted_stock {
    type: number
    sql: ${TABLE}.UnrestrictedStock ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [plant_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_delivered_qty {
    type: sum
    hidden: yes
    sql: ${delivered_qty} ;;
  }

  measure: average_delivered_qty {
    type: average
    hidden: yes
    sql: ${delivered_qty} ;;
  }

  measure: total_pending_delivery {
    type: sum
    hidden: yes
    sql: ${pending_delivery} ;;
  }

  measure: average_pending_delivery {
    type: average
    hidden: yes
    sql: ${pending_delivery} ;;
  }

  measure: total_sales_qty {
    type: sum
    hidden: yes
    sql: ${sales_qty} ;;
  }

  measure: average_sales_qty {
    type: average
    hidden: yes
    sql: ${sales_qty} ;;
  }

  measure: total_unrestricted_stock {
    type: sum
    hidden: yes
    sql: ${unrestricted_stock} ;;
  }

  measure: average_unrestricted_stock {
    type: average
    hidden: yes
    sql: ${unrestricted_stock} ;;
  }
}
