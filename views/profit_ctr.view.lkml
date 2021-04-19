view: profit_ctr {
  sql_table_name: `SAP_REPORTING.ProfitCtr`
    ;;

  dimension: additional_name {
    type: string
    sql: ${TABLE}.AdditionalName ;;
  }

  dimension: address_name {
    type: string
    sql: ${TABLE}.AddressName ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: controlling_area {
    type: string
    sql: ${TABLE}.ControllingArea ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.District ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: long_text {
    type: string
    sql: ${TABLE}.LongText ;;
  }

  dimension: name3 {
    type: string
    sql: ${TABLE}.Name3 ;;
  }

  dimension: name4 {
    type: string
    sql: ${TABLE}.Name4 ;;
  }

  dimension: nprctr {
    type: string
    sql: ${TABLE}.nprctr ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.PhoneNumber ;;
  }

  dimension: po_box {
    label: "PO Box"
    type: string
    sql: ${TABLE}.POBox ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: profit_center {
    type: string
    sql: ${TABLE}.ProfitCenter ;;
  }

  dimension: profit_ctr_country {
    type: string
    sql: ${TABLE}.ProfitCtrCountry ;;
  }

  dimension_group: profit_ctr_creation {
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
    sql: ${TABLE}.ProfitCtrCreation ;;
  }

  dimension: profit_ctr_responsible_name {
    type: string
    sql: ${TABLE}.ProfitCtrResponsibleName ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: standard_hierarchy {
    type: string
    sql: ${TABLE}.StandardHierarchy ;;
  }

  dimension: stras {
    type: string
    sql: ${TABLE}.stras ;;
  }

  dimension: tax_jurisdiction {
    type: string
    sql: ${TABLE}.TaxJurisdiction ;;
  }

  dimension_group: valid_from {
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
    sql: ${TABLE}.ValidFrom ;;
  }

  dimension_group: valid_to {
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
    sql: ${TABLE}.ValidTo ;;
  }

  measure: count {
    type: count
    drill_fields: [additional_name, profit_ctr_responsible_name, address_name]
  }
}
