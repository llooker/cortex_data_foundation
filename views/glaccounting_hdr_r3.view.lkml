view: glaccounting_hdr_r3 {
  sql_table_name: `SAP_REPORTING.GLAccountingHdrR3`
    ;;

  dimension_group: acc_doc_creation_dt {
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
    sql: ${TABLE}.AccDocCreationDt ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.AccountNumber ;;
  }

  dimension: accounting_doc_item {
    type: string
    sql: ${TABLE}.AccountingDocItem ;;
  }

  dimension: accounting_doc_number {
    type: string
    sql: ${TABLE}.AccountingDocNumber ;;
  }

  dimension: accounting_doc_type {
    type: string
    sql: ${TABLE}.AccountingDocType ;;
  }

  dimension: alternative_ref_key {
    type: string
    sql: ${TABLE}.AlternativeRefKey ;;
  }

  dimension: business_area {
    type: string
    sql: ${TABLE}.BusinessArea ;;
  }

  dimension: business_transaction {
    type: string
    sql: ${TABLE}.BusinessTransaction ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: controlling_area {
    type: string
    sql: ${TABLE}.ControllingArea ;;
  }

  dimension: cost_center {
    type: string
    sql: ${TABLE}.CostCenter ;;
  }

  dimension: cost_element {
    type: string
    sql: ${TABLE}.CostElement ;;
  }

  dimension: cross_company_code {
    type: string
    sql: ${TABLE}.CrossCompanyCode ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: currency_key {
    type: string
    sql: ${TABLE}.CurrencyKey ;;
  }

  dimension: debit_credit {
    type: string
    sql: ${TABLE}.DebitCredit ;;
  }

  dimension: doc_item {
    type: string
    sql: ${TABLE}.DocItem ;;
  }

  dimension: doc_reference {
    type: string
    sql: ${TABLE}.DocReference ;;
  }

  dimension: document_currency_value {
    type: number
    sql: ${TABLE}.DocumentCurrencyValue ;;
  }

  dimension_group: document {
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
    sql: ${TABLE}.DocumentDate ;;
  }

  dimension: document_nr {
    type: string
    sql: ${TABLE}.DocumentNr ;;
  }

  dimension: document_status {
    type: string
    sql: ${TABLE}.DocumentStatus ;;
  }

  dimension: document_text {
    type: string
    sql: ${TABLE}.DocumentText ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.ExchangeRate ;;
  }

  dimension: f0_ {
    type: string
    sql: ${TABLE}.f0_ ;;
  }

  dimension: financial_mgmt_area {
    type: string
    sql: ${TABLE}.FinancialMgmtArea ;;
  }

  dimension: fiscal_period {
    type: string
    sql: ${TABLE}.FiscalPeriod ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: fiscalyear {
    type: string
    sql: ${TABLE}.FiscalYear ;;
  }

  dimension: fiscal_year_1 {
    type: string
    sql: ${TABLE}.FiscalYear_1 ;;
  }

  dimension: fisltrx_flag {
    type: string
    sql: ${TABLE}.FISLTrxFlag ;;
  }

  dimension: functional_area {
    type: string
    sql: ${TABLE}.FunctionalArea ;;
  }

  dimension: group_curr_value {
    type: number
    sql: ${TABLE}.GroupCurrValue ;;
  }

  dimension: item_category {
    type: string
    sql: ${TABLE}.ItemCategory ;;
  }

  dimension_group: last_doc_change {
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
    sql: ${TABLE}.LastDocChangeDate ;;
  }

  dimension: ledger {
    type: string
    sql: ${TABLE}.Ledger ;;
  }

  dimension: ledger_group {
    type: string
    sql: ${TABLE}.LedgerGroup ;;
  }

  dimension: local_curr_value {
    type: number
    sql: ${TABLE}.LocalCurrValue ;;
  }

  dimension: local_currency {
    type: string
    sql: ${TABLE}.LocalCurrency ;;
  }

  dimension: other_curr_value {
    type: number
    sql: ${TABLE}.OtherCurrValue ;;
  }

  dimension: partner_functional_area {
    type: string
    sql: ${TABLE}.PartnerFunctionalArea ;;
  }

  dimension: partner_profit_center {
    type: string
    sql: ${TABLE}.PartnerProfitCenter ;;
  }

  dimension: partner_reporting_segment {
    type: string
    sql: ${TABLE}.PartnerReportingSegment ;;
  }

  dimension_group: posting {
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
    sql: ${TABLE}.PostingDate ;;
  }

  dimension: posting_key {
    type: string
    sql: ${TABLE}.PostingKey ;;
  }

  dimension: posting_period {
    type: string
    sql: ${TABLE}.PostingPeriod ;;
  }

  dimension: profit_center {
    type: string
    sql: ${TABLE}.ProfitCenter ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: record_type {
    type: string
    sql: ${TABLE}.RecordType ;;
  }

  dimension: ref_key1 {
    type: string
    sql: ${TABLE}.RefKey1 ;;
  }

  dimension: ref_key2 {
    type: string
    sql: ${TABLE}.RefKey2 ;;
  }

  dimension: reference_key {
    type: string
    sql: ${TABLE}.ReferenceKey ;;
  }

  dimension: reference_transaction {
    type: string
    sql: ${TABLE}.ReferenceTransaction ;;
  }

  dimension: reporting_segment {
    type: string
    sql: ${TABLE}.ReportingSegment ;;
  }

  dimension: reversal_doc_fiscal_yeah {
    type: string
    sql: ${TABLE}.ReversalDocFiscalYeah ;;
  }

  dimension: reversal_document {
    type: string
    sql: ${TABLE}.ReversalDocument ;;
  }

  dimension: second_local_currency {
    type: string
    sql: ${TABLE}.SecondLocalCurrency ;;
  }

  dimension: sender_cost_center {
    type: string
    sql: ${TABLE}.SenderCostCenter ;;
  }

  dimension: split_item_flag {
    type: string
    sql: ${TABLE}.SplitItemFlag ;;
  }

  dimension: third_local_currency {
    type: string
    sql: ${TABLE}.ThirdLocalCurrency ;;
  }

  dimension: trading_business_area {
    type: string
    sql: ${TABLE}.TradingBusinessArea ;;
  }

  dimension: trading_partner_company {
    type: string
    sql: ${TABLE}.TradingPartnerCompany ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.TransactionType ;;
  }

  dimension_group: translation_data {
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
    sql: ${TABLE}.TranslationData ;;
  }

  dimension: uo_m {
    type: string
    sql: ${TABLE}.UoM ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.Version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
