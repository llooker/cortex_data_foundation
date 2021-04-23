view: t002 {
  sql_table_name: `lucias-rabia.SAP_ECC.t002`
    ;;

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: lahq {
    type: string
    sql: ${TABLE}.lahq ;;
  }

  dimension: laiso {
    type: string
    sql: ${TABLE}.laiso ;;
  }

  dimension: laspez {
    type: string
    sql: ${TABLE}.laspez ;;
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
