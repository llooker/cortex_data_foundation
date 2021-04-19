view: currency_conv_util {
  sql_table_name: `SAP_REPORTING.CurrencyConvUtil`
    ;;

  dimension: conversion_factor {
    type: number
    sql: ${TABLE}.ConversionFactor ;;
  }

  dimension: ffact {
    type: number
    sql: ${TABLE}.FFACT ;;
  }

  dimension: from_curr_decimal {
    type: number
    sql: ${TABLE}.fromCurrDecimal ;;
  }

  dimension: from_gdatu {
    type: number
    sql: ${TABLE}.FromGDATU ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: source_currency_fcurr {
    type: string
    sql: ${TABLE}.SourceCurrency_FCURR ;;
  }

  dimension: target_currency_tcurr {
    type: string
    sql: ${TABLE}.TargetCurrency_TCURR ;;
  }

  dimension: tfact {
    type: number
    sql: ${TABLE}.TFACT ;;
  }

  dimension: to_curr_decimal {
    type: number
    sql: ${TABLE}.toCurrDecimal ;;
  }

  dimension: to_gdatu {
    type: number
    sql: ${TABLE}.ToGDATU ;;
  }

  dimension: valid_from_date {
    type: number
    sql: ${TABLE}.validFromDate ;;
  }

  dimension: valid_to_date {
    type: number
    sql: ${TABLE}.validToDate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
