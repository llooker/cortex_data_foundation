# If necessary, uncomment the line below to include explore_source.
# include: "cortex_data_foundation.model.lkml"

view: sales_pending_delivery_per_order {
  derived_table: {
    explore_source: sales_fulfillment_per_order {
      column: client_MANDT {field:sales_fulfillment_per_order.client}
      column: sales_order_VBELV {field:sales_fulfillment_per_order.sales_order}
      column: language_SPRAS {field:sales_fulfillment_per_order.language}
      column: pending_delivery {field:sales_fulfillment_per_order.total_pending_delivery}

    }
  }

  dimension: sales_pending_delivery_per_order_pk {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${client}, ' - ', ${sales_order}, ' - ', ${language}) ;;
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

  dimension: pending_delivery {
    hidden: yes
    type: number
    sql: ${TABLE}.pending_delivery ;;
  }

  dimension: is_order_delivery_completed {
    type: yesno
    sql: ${pending_delivery}=0 ;;
  }

  measure: total_pending_delivery {
    hidden: yes
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

}
