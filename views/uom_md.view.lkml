# The name of this view in Looker is "Uo Mmd"
view: uom_md {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lucias-rabia.SAP_REPORTING.UoMMD`
    ;;
  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Client Mandt" in Explore.


  dimension: uom_md_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${client}, " - ", ${unit_of_measurement}, " - ", ${language_key});;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: dimension_text {
    hidden: no
    type: string
    sql: ${TABLE}.DimensionText_TXDIM ;;
  }

  dimension: language_key {
    hidden: yes
    type: string
    sql: ${TABLE}.LanguageKey_SPRAS ;;
  }

  dimension: pressure_value {
    hidden: yes
    type: number
    sql: ${TABLE}.PressureValue_PRESS_VAL ;;
  }

  dimension: six_char_id_for_external_unit_of_measurement {
    hidden: yes
    type: string
    sql: ${TABLE}.SixCharIdForExternalUnitOfMeasurement_KZEX6 ;;
  }

  dimension: temperature_unit {
    hidden: yes
    type: string
    sql: ${TABLE}.TemperatureUnit_TEMP_UNIT ;;
  }

  dimension: three_char_indicator_for_external_unit_of_measurement {
    hidden: yes
    type: string
    sql: ${TABLE}.ThreeCharIndicatorForExternalUnitOfMeasurement_KZEX3 ;;
  }

  dimension: unit_of_measurement_family {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfMeasurementFamily_FAMUNIT ;;
  }

  dimension: unit_of_measurement {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfMeasurement_MSEHI ;;
  }

  dimension: unit_of_measurement_text_maximum10_characters {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfMeasurementText__maximum10Characters___MSEHT ;;
  }

  dimension: unit_of_measurement_text_maximum30_characters {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfMeasurementText__maximum30Characters___MSEHL ;;
  }

  dimension: unit_of_pressure_press_unit {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfPressure_PRESS_UNIT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
