view: ledger_md {
  sql_table_name: `SAP_REPORTING.LedgerMD`
    ;;

  dimension: addl_curr_role1 {
    type: string
    sql: ${TABLE}.AddlCurrRole1 ;;
  }

  dimension: addl_curr_role2 {
    type: string
    sql: ${TABLE}.AddlCurrRole2 ;;
  }

  dimension: addl_curr_role3 {
    type: string
    sql: ${TABLE}.AddlCurrRole3 ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: company_currency_role {
    type: string
    sql: ${TABLE}.CompanyCurrencyRole ;;
  }

  dimension: controlling_valuation_type {
    type: string
    sql: ${TABLE}.ControllingValuationType ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: leading_ledger_flag {
    type: string
    sql: ${TABLE}.LeadingLedgerFlag ;;
  }

  dimension: ledger {
    type: string
    sql: ${TABLE}.Ledger ;;
  }

  dimension: ledger_application {
    type: string
    sql: ${TABLE}.LedgerApplication ;;
  }

  dimension: ledger_subapplication {
    type: string
    sql: ${TABLE}.LedgerSubapplication ;;
  }

  dimension: logical_system {
    type: string
    sql: ${TABLE}.LogicalSystem ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
