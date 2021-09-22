# The name of this view in Looker is "Regions T005 S"
view: regions_t005 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lucias-rabia.SAP_REPORTING.Regions_T005S`
    ;;

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.

  dimension: regions_t005_pk {
    hidden: yes
    primary_key: yes
    sql: concat(${client}, ' - ', ) ;;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: country_key {
    hidden: yes
    type: string
    sql: ${TABLE}.CountryKey_LAND1 ;;
  }

  dimension: provincial_tax_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ProvincialTaxCode_FPRCD ;;
  }

  dimension: region {
    hidden: yes
    type: string
    sql: ${TABLE}.Region_BLAND ;;
  }

  dimension: state_of_manufacture {
    hidden: yes
    type: string
    sql: ${TABLE}.StateOfManufacture_HERBL ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  # measure: count {
  #   type: count
  #   drill_fields: []
  # }
}

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.
