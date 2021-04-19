view: material_valuation_stock_changes {
  sql_table_name: `SAP_REPORTING.MaterialValuationStockChanges`
    ;;

  dimension_group: budat {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.budat ;;
  }

  dimension: kalnr {
    type: string
    sql: ${TABLE}.kalnr ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: menge {
    type: number
    sql: ${TABLE}.menge ;;
  }

  dimension: wrbtr {
    type: number
    sql: ${TABLE}.wrbtr ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
