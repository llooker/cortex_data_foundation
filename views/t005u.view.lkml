view: t005u {
  sql_table_name: `lucias-rabia.SAP_ECC.t005u`
    ;;

  dimension: bezei {
    type: string
    sql: ${TABLE}.bezei ;;
  }

  dimension: bland {
    type: string
    sql: ${TABLE}.bland ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: land1 {
    type: string
    sql: ${TABLE}.land1 ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension_group: recordstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: spras {
    type: string
    sql: ${TABLE}.spras ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
