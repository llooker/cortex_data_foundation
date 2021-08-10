# The name of this view in Looker is "Material Types Md"
view: material_types_md {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lucias-rabia.SAP_REPORTING.MaterialTypesMD`
    ;;

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Client Mandt" in Explore.


  dimension: material_types_md_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${client}, " - ", ${material_type}, " - ", ${language_key});;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: material_type_description {
    type: string
    sql: ${TABLE}.DescriptionOfMaterialType_MTBEZ ;;
  }

  dimension: language_key {
    hidden: yes
    type: string
    sql: ${TABLE}.LanguageKey_SPRAS ;;
  }

  dimension: material_type {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialType_MTART ;;
  }

  dimension: reference_material_type {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceMaterialType_MTREF ;;
  }

  dimension: screen_reference_depending_on_the_material_type {
    hidden: yes
    type: string
    sql: ${TABLE}.ScreenReferenceDependingOnTheMaterialType_MBREF ;;
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

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.
