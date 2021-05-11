view: sales_status_items {
  sql_table_name: `lucias-rabia.SAP_REPORTING.SalesStatus_Items`
    ;;

  dimension: sales_status_items_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: concat(${invoice_number},' - ',${invoice_item},' - ',${currency},' - ',${language} ;;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency_WAERK ;;
  }

  dimension: delivered_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.DeliveredQty ;;
  }

  dimension: delivered_uom {
    label: "Delivered UoM"
    type: string
    sql: ${TABLE}.DeliveredUoM ;;
  }

  dimension: delivery_item {
    type: string
    sql: ${TABLE}.DeliveryItem ;;
  }

  dimension: delivery_number {
    type: string
    sql: ${TABLE}.DeliveryNumber ;;
  }

  dimension: invoice_currency {
    type: string
    sql: ${TABLE}.InvoiceCurrency ;;
  }

  dimension: invoice_item {
    type: string
    sql: ${TABLE}.InvoiceItem ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.InvoiceNumber ;;
  }

  dimension: invoice_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.InvoiceQty ;;
  }

  dimension: invoice_uom {
    label: "Invoice UoM"
    type: string
    sql: ${TABLE}.InvoiceUoM ;;
  }

  dimension: invoice_value {
    hidden: yes
    type: number
    sql: ${TABLE}.InvoiceValue ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: material_number {
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
  }

  dimension: material_text {
    type: string
    sql: ${TABLE}.MaterialText_MAKTX ;;
  }

  dimension: net_price {
    hidden: yes
    type: number
    sql: ${TABLE}.NetPrice_NETWR ;;
  }

  dimension: product_hierarchy {
    type: string
    sql: ${TABLE}.ProductHierarchy_PRODH ;;
  }

  dimension: sales_item {
    type: string
    sql: ${TABLE}.SalesItem ;;
  }

  dimension: sales_order {
    type: string
    sql: ${TABLE}.SalesOrder ;;
  }

  dimension: sales_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.SalesQty ;;
  }

  dimension: sales_unit {
    type: string
    sql: ${TABLE}.SalesUnit_VRKME ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_sales_quantity {
    type: sum
    sql: ${sales_qty} ;;
    value_format_name: decimal_0
  }

  measure: total_net_price {
    type: sum
    sql: ${net_price} ;;
    value_format_name: decimal_2
  }

  measure: total_delivered_quantity {
    type: sum
    sql: ${delivered_qty} ;;
    value_format_name: decimal_0
  }

  measure: total_invoice_quantity {
    type: sum
    sql: ${invoice_qty} ;;
    value_format_name: decimal_0
  }

  measure: total_invoice_value {
    type: sum
    sql: ${invoice_value} ;;
    value_format_name: decimal_0
  }

  measure: total_pending_delivery_quantity {
    type: sum
    sql: ${sales_qty}-${delivered_qty};;
    value_format_name: decimal_0
  }

  # measure: total_delivered_pending_billing {
  #   type: sum
  #   sql: ${delivered_pending_billing} ;;
  #   value_format_name: usd
  # }
}
