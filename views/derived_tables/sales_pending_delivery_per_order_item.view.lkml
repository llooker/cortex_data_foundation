# If necessary, uncomment the line below to include explore_source.
# include: "cortex_data_foundation.model.lkml"

view: sales_pending_delivery_per_order_item {
  derived_table: {
    explore_source: sales_fulfillment_per_order {
      column: client_MANDT {field:sales_fulfillment_per_order.client}
      column: sales_order_VBELV {field:sales_fulfillment_per_order.sales_order}
      column: sales_item_POSNV {field:sales_fulfillment_per_order.sales_item}
      column: language_SPRAS {field:sales_fulfillment_per_order.language}
      column: pending_delivery {field:sales_fulfillment_per_order.total_pending_delivery}

    }
  }

  dimension: sales_pending_delivery_per_order_item_pk {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${client}, ' - ', ${sales_order}, ' - ', ${sales_item}, ' - ', ${language}) ;;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.client_MANDT ;;
  }

  dimension: language {
    hidden: yes
    type: string
    sql: ${TABLE}.language_SPRAS ;;
  }

  dimension: sales_order {
    hidden: yes
    type: string
    sql: ${TABLE}.sales_order_VBELV ;;
  }

  dimension: sales_item {
    hidden: yes
    type: string
    sql: ${TABLE}.sales_item_POSNV ;;
  }

  dimension: pending_delivery {
    hidden: yes
    type: number
    sql: ${TABLE}.pending_delivery ;;
  }

  dimension: is_order_item_delivery_completed {
    type: yesno
    sql: ${pending_delivery}=0 ;;
  }


  measure: total_pending_delivery {
    type: sum
    sql: ${pending_delivery} ;;
    html: <a href="#drillmenu" target="_self"> @{BigNumbers_format};;
    drill_fields: [sales_orders.sales_document_detail*,total_pending_delivery]
  }

}
