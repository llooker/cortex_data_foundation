view: sales_organizations {
  sql_table_name: `SAP_REPORTING.SalesOrganizations`
    ;;

  dimension: client_mandt {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: co_co_currency_waers {
    hidden: yes
    type: string
    sql: ${TABLE}.CoCoCurrency_WAERS ;;
  }

  dimension: company_butxt {
    hidden: yes
    type: string
    sql: ${TABLE}.Company_BUTXT ;;
  }

  dimension: company_code_bukrs {
    hidden: yes
    type: string
    sql: ${TABLE}.CompanyCode_BUKRS ;;
  }

  dimension: country_land1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Country_LAND1 ;;
  }

  dimension: fiscal_yr_variant_periv {
    hidden: yes
    type: string
    sql: ${TABLE}.FiscalYrVariant_PERIV ;;
  }

  dimension: language_spras {
    hidden: yes
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: sales_org_currency_waers {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrgCurrency_WAERS ;;
  }

  dimension: sales_org_customer_kunnr {
    type: string
    sql: ${TABLE}.SalesOrgCustomer_KUNNR ;;
  }

  dimension: sales_org_name_vtext {
    type: string
    sql: ${TABLE}.SalesOrgName_VTEXT ;;
  }

  dimension: sales_org_vkorg {
    type: string
    sql: ${TABLE}.SalesOrg_VKORG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
