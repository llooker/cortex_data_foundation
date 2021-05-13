view: sales_fullfillment {
  sql_table_name: `lucias-rabia.SAP_REPORTING.SalesFullfillment`
    ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency_WAERK ;;
  }

  dimension: delivered_pending_billing {
    hidden: yes
    type: number
    sql: ${TABLE}.DeliveredPendingBilling ;;
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

  dimension: material_number {
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
    link: {
      label: "Material Details"
      url: "/dashboards-next/sap_operational_reporting::2_material_details?Material%20Number%20Matnr={{ filterable_value }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: material_text {
    type: string
    sql: ${TABLE}.MaterialText_MAKTX ;;
    link: {
      label: "Material Details"
      url: "/dashboards-next/sap_operational_reporting::2_material_details?Material%20Text%20Maktx={{ filterable_value }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: net_price {
    hidden: yes
    type: number
    sql: ${TABLE}.NetPrice ;;
  }

  dimension: pending_delivery {
    hidden: yes
    type: number
    sql: ${TABLE}.PendingDelivery ;;
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

  measure: total_pending_delivery_quantity {
    type: sum
    sql: ${pending_delivery} ;;
    value_format_name: decimal_0
  }

  measure: total_delivered_pending_billing {
    type: sum
    sql: ${delivered_pending_billing} ;;
    value_format_name: usd
  }
}
