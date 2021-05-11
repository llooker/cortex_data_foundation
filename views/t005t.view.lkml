view: t005t {
  sql_table_name: `lucias-rabia.SAP_DEMO.t005t`
    ;;

  dimension: t005t_pk {
    primary_key: yes
    type: string
    sql: CONCAT(${land1}, " - ",${spras} ;;
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

  dimension: landx {
    label: "Customer Country"
    type: string
    sql: ${TABLE}.landx ;;
  }

  dimension: landx50 {
    hidden: yes
    type: string
    sql: ${TABLE}.landx50 ;;
  }

  dimension: mandt {
    hidden: yes
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: natio {
    hidden: yes
    type: string
    sql: ${TABLE}.natio ;;
  }

  dimension: natio50 {
    hidden: yes
    type: string
    sql: ${TABLE}.natio50 ;;
  }

  dimension: operation_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: prq_spregt {
    hidden: yes
    type: string
    sql: ${TABLE}.prq_spregt ;;
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
