view: sales_organizations {
  sql_table_name: `@{DATASET}.SalesOrganizationsMD`
    ;;

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: co_co_currency {
    hidden: yes
    type: string
    sql: ${TABLE}.CoCoCurrency_WAERS ;;
  }

  dimension: company {
    hidden: yes
    type: string
    sql: ${TABLE}.Company_BUTXT ;;
  }

  dimension: company_code {
    hidden: yes
    type: string
    sql: ${TABLE}.CompanyCode_BUKRS ;;
  }

  dimension: country {
    hidden: yes
    type: string
    sql: ${TABLE}.Country_LAND1 ;;
  }

  dimension: fiscal_yr_variant {
    hidden: yes
    type: string
    sql: ${TABLE}.FiscalYrVariant_PERIV ;;
  }

  dimension: language {
    hidden: yes
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: sales_org_currency {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrgCurrency_WAERS ;;
  }

  dimension: sales_org_customer {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrgCustomer_KUNNR ;;
  }

  dimension: sales_org_name {
    label: "Sales Organization Name"
    type: string
    sql: ${TABLE}.SalesOrgName_VTEXT ;;
  }

  dimension: sales_org {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrg_VKORG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
