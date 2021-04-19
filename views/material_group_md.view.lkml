view: material_group_md {
  sql_table_name: `SAP_REPORTING.MaterialGroupMD`
    ;;

  dimension: asset_class {
    type: string
    sql: ${TABLE}.AssetClass ;;
  }

  dimension: authorization_group {
    type: string
    sql: ${TABLE}.AuthorizationGroup ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: default_unit_of_weight_gewei {
    type: string
    sql: ${TABLE}.DefaultUnitofWeight_GEWEI ;;
  }

  dimension: department_number_abtnr {
    type: string
    sql: ${TABLE}.DepartmentNumber_ABTNR ;;
  }

  dimension: division_spart {
    type: string
    sql: ${TABLE}.Division_SPART ;;
  }

  dimension: group_material_wwgpa {
    type: string
    sql: ${TABLE}.GroupMaterial_WWGPA ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: material_group_matkl {
    type: string
    sql: ${TABLE}.MaterialGroup_MATKL ;;
  }

  dimension: material_group_name_wgbez {
    type: string
    sql: ${TABLE}.MaterialGroupName_WGBEZ ;;
  }

  dimension: price_level_group {
    type: string
    sql: ${TABLE}.PriceLevelGroup ;;
  }

  dimension: purchasing_value_key {
    type: string
    sql: ${TABLE}.PurchasingValueKey ;;
  }

  dimension: reference_group_ref_material_wwgda {
    type: string
    sql: ${TABLE}.ReferenceGroupRefMaterial_WWGDA ;;
  }

  dimension: valuation_class_bklas {
    type: string
    sql: ${TABLE}.ValuationClass_BKLAS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
