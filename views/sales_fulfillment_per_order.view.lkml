# The name of this view in Looker is "Sales Fulfillment per Order"
view: sales_fulfillment_per_order {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lucias-rabia.SAP_REPORTING.SalesFulfillment_perOrder`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Client Mandt" in Explore.

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: currency_waerk {
    type: string
    sql: ${TABLE}.Currency_WAERK ;;
  }

  dimension: delivered_pending_billing {
    type: number
    sql: ${TABLE}.DeliveredPendingBilling ;;
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

  dimension: net_price {
    type: number
    sql: ${TABLE}.NetPrice ;;
  }

  dimension: pending_delivery {
    type: number
    sql: ${TABLE}.PendingDelivery ;;
  }

  dimension: plant_werks {
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: sales_item_posnv {
    type: string
    sql: ${TABLE}.SalesItem_POSNV ;;
  }

  dimension: sales_order_vbelv {
    type: string
    sql: ${TABLE}.SalesOrder_VBELV ;;
  }

  dimension: sales_organization_vkorg {
    type: string
    sql: ${TABLE}.SalesOrganization_VKORG ;;
  }

  dimension: sales_qty {
    type: number
    sql: ${TABLE}.SalesQty ;;
  }

  dimension: sales_unit_vrkme {
    type: string
    sql: ${TABLE}.SalesUnit_VRKME ;;
  }

  dimension: storage_location_lgort {
    type: string
    sql: ${TABLE}.StorageLocation_LGORT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_delivered_pending_billing {
    type: sum
    hidden: yes
    sql: ${delivered_pending_billing} ;;
  }

  measure: average_delivered_pending_billing {
    type: average
    hidden: yes
    sql: ${delivered_pending_billing} ;;
  }

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

  measure: total_net_price {
    type: sum
    hidden: yes
    sql: ${net_price} ;;
  }

  measure: average_net_price {
    type: average
    hidden: yes
    sql: ${net_price} ;;
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
}
