# If necessary, uncomment the line below to include explore_source.
# include: "sap_operational_reporting.model.lkml"

view: sales_pending_delivery_per_order {
  derived_table: {
    explore_source: sales_fulfillment_per_order {
      column: client_MANDT {field:sales_fulfillment_per_order.client}
      column: sales_order_VBELV {field:sales_fulfillment_per_order.sales_order}
      column: pending_delivery {field:sales_fulfillment_per_order.sales_item}

    }
  }
  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.client_MANDT ;;
  }

  dimension: sales_order {
    hidden: yes
    type: string
    sql: ${TABLE}.sales_order_VBELV ;;
  }

  dimension: pending_delivery {
    hidden: yes
    type: number
    sql: ${TABLE}.pending_delivery ;;
  }

  measure: total_pending_delivery {
    type: sum
    sql: ${pending_delivery} ;;
    value_format_name: decimal_0
  }
}
