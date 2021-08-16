# The name of this view in Looker is "Sddocument Flow"
view: sd_document_flow {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lucias-rabia.SAP_REPORTING.SDDocumentFlow`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Client Mandt" in Explore.

  dimension: client {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: delivered_qty {
    type: number
    sql: ${TABLE}.DeliveredQty ;;
  }

  dimension: delivered_uom {
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
    type: number
    sql: ${TABLE}.InvoiceQty ;;
  }

  dimension: invoice_uom {
    type: string
    sql: ${TABLE}.InvoiceUoM ;;
  }

  dimension: invoice_value {
    type: number
    sql: ${TABLE}.InvoiceValue ;;
  }

  dimension: sales_item {
    type: string
    sql: ${TABLE}.SalesItem ;;
  }

  dimension: sales_order {
    type: string
    sql: ${TABLE}.SalesOrder ;;
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

  measure: total_invoice_qty {
    type: sum
    hidden: yes
    sql: ${invoice_qty} ;;
  }

  measure: average_invoice_qty {
    type: average
    hidden: yes
    sql: ${invoice_qty} ;;
  }

  measure: total_invoice_value {
    type: sum
    hidden: yes
    sql: ${invoice_value} ;;
  }

  measure: average_invoice_value {
    type: average
    hidden: yes
    sql: ${invoice_value} ;;
  }
}
