view: regions_t005 {
  sql_table_name: `@{DATASET}.Regions_T005S`;;

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
}
