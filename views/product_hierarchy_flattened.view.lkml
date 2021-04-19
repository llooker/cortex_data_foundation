view: product_hierarchy_flattened {
  sql_table_name: `SAP_REPORTING.ProductHierarchy_Flattened`
    ;;

  dimension: prodh1 {
    type: string
    sql: ${TABLE}.prodh1 ;;
  }

  dimension: prodh2 {
    type: string
    sql: ${TABLE}.prodh2 ;;
  }

  dimension: prodh3 {
    type: string
    sql: ${TABLE}.prodh3 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
