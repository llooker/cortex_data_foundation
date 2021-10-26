view: material_group_md {
  sql_table_name: `@{DATASET}.MaterialGroupsMD`
    ;;

  dimension: asset_class {
    hidden: yes
    type: string
    sql: ${TABLE}.AssetClass ;;
  }

  dimension: authorization_group {
    hidden: yes
    type: string
    sql: ${TABLE}.AuthorizationGroup ;;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: default_unit_of_weight {
    hidden: yes
    type: string
    sql: ${TABLE}.DefaultUnitofWeight_GEWEI ;;
  }

  dimension: department_number {
    hidden: yes
    type: string
    sql: ${TABLE}.DepartmentNumber_ABTNR ;;
  }

  dimension: division {
    hidden: yes
    type: string
    sql: ${TABLE}.Division_SPART ;;
  }

  dimension: group_material {
    hidden: yes
    type: string
    sql: ${TABLE}.GroupMaterial_WWGPA ;;
  }

  dimension: language {
    hidden: yes
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: material_group {
    hidden: yes
    group_label: "Material Group"
    type: string
    sql: ${TABLE}.MaterialGroup_MATKL ;;
  }

  dimension: material_group_name {
    group_label: "Material Group"
    type: string
    sql: ${TABLE}.MaterialGroupName_WGBEZ ;;
  }

  dimension: price_level_group {
    hidden: yes
    type: string
    sql: ${TABLE}.PriceLevelGroup ;;
  }

  dimension: purchasing_value_key {
    hidden: yes
    type: string
    sql: ${TABLE}.PurchasingValueKey ;;
  }

  dimension: reference_group_ref_material {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceGroupRefMaterial_WWGDA ;;
  }

  dimension: valuation_class {
    hidden: yes
    type: string
    sql: ${TABLE}.ValuationClass_BKLAS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
