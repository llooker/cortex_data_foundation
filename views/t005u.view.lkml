view: t005u {
  sql_table_name: `lucias-rabia.SAP_ECC.t005u`
    ;;

  dimension: t005u_pk {
    primary_key: yes
    type: string
    sql: CONCAT(${land1}, " - ",${spras} ;;
  }

  dimension: bezei {
    label: "Customer Region"
    type: string
    sql: ${TABLE}.bezei ;;
    map_layer_name: us_states
  }

  dimension: bland {
    hidden: yes
    type: string
    sql: ${TABLE}.bland ;;
  }

  dimension: is_deleted {
    hidden: yes
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: land1 {
    hidden: yes
    type: string
    sql: ${TABLE}.land1 ;;
  }

  dimension: mandt {
    hidden: yes
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: operation_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension_group: recordstamp {
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}.spras ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
