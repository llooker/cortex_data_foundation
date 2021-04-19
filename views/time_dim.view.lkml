view: time_dim {
  sql_table_name: `SAP_REPORTING.TIME_DIM`
    ;;

  dimension: cal_month {
    type: string
    sql: ${TABLE}.CALMONTH ;;
  }

  dimension: cal_quarter {
    type: string
    sql: ${TABLE}.CALQUARTER ;;
  }

  dimension: cal_week {
    type: string
    sql: ${TABLE}.CALWEEK ;;
  }

  dimension: date_sap {
    type: string
    sql: ${TABLE}.DATE_SAP ;;
  }

  dimension_group: date_sql {
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
    sql: ${TABLE}.DATE_SQL ;;
  }

  dimension: datetime_sap {
    type: string
    sql: ${TABLE}.DATETIME_SAP ;;
  }

  dimension_group: datetimestamp {
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
    sql: ${TABLE}.DATETIMESTAMP ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.DAY ;;
  }

  dimension: day_int {
    type: number
    sql: ${TABLE}.DAY_INT ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: day_of_week_int {
    type: number
    sql: ${TABLE}.DAY_OF_WEEK_INT ;;
  }

  dimension: hour {
    type: string
    sql: ${TABLE}.HOUR ;;
  }

  dimension: hour_int {
    type: number
    sql: ${TABLE}.HOUR_INT ;;
  }

  dimension: minute {
    type: string
    sql: ${TABLE}.MINUTE ;;
  }

  dimension: minute_int {
    type: number
    sql: ${TABLE}.MINUTE_INT ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.MONTH ;;
  }

  dimension: month_int {
    type: number
    sql: ${TABLE}.MONTH_INT ;;
  }

  dimension: month_last_day {
    type: string
    sql: ${TABLE}.MONTH_LAST_DAY ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: quarter_int {
    type: number
    sql: ${TABLE}.QUARTER_INT ;;
  }

  dimension: second {
    type: string
    sql: ${TABLE}.SECOND ;;
  }

  dimension: second_int {
    type: number
    sql: ${TABLE}.SECOND_INT ;;
  }

  dimension: tzntstmpl {
    type: number
    sql: ${TABLE}.TZNTSTMPL ;;
  }

  dimension: tzntstmps {
    type: number
    sql: ${TABLE}.TZNTSTMPS ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.WEEK ;;
  }

  dimension: week_int {
    type: number
    sql: ${TABLE}.WEEK_INT ;;
  }

  dimension: week_year {
    type: string
    sql: ${TABLE}.WEEK_YEAR ;;
  }

  dimension: week_year_int {
    type: number
    sql: ${TABLE}.WEEK_YEAR_INT ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: year_int {
    type: number
    sql: ${TABLE}.YEAR_INT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
