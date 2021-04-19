view: materials {
  sql_table_name: `SAP_REPORTING.Materials`
    ;;

  dimension: allowed_pack_volume {
    type: number
    sql: ${TABLE}.AllowedPackVolume ;;
  }

  dimension: allowed_packaging_weight {
    type: number
    sql: ${TABLE}.AllowedPackagingWeight ;;
  }

  dimension: apv_unit {
    label: "APV Unit"
    type: string
    sql: ${TABLE}.APVUnit ;;
  }

  dimension: asset_class {
    type: string
    sql: ${TABLE}.AssetClass ;;
  }

  dimension: authorization_group {
    type: string
    sql: ${TABLE}.AuthorizationGroup ;;
  }

  dimension: authorization_group_1 {
    type: string
    sql: ${TABLE}.AuthorizationGroup_1 ;;
  }

  dimension: base_unit_of_measure {
    type: string
    sql: ${TABLE}.BaseUnitoMeasure ;;
  }

  dimension: basic_material {
    type: string
    sql: ${TABLE}.BasicMaterial ;;
  }

  dimension: cad_indicator {
    label: "CAD Indicator"
    type: string
    sql: ${TABLE}.CADIndicator ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: container_requirements {
    type: string
    sql: ${TABLE}.ContainerRequirements ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}.CreationDate ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: default_unit_of_weight {
    type: string
    sql: ${TABLE}.DefaultUnitofWeight ;;
  }

  dimension: deleted_flag {
    type: string
    sql: ${TABLE}.DeletedFlag ;;
  }

  dimension_group: deletion {
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
    sql: ${TABLE}.DeletionDate ;;
  }

  dimension: department_number {
    type: string
    sql: ${TABLE}.DepartmentNumber ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: division_1 {
    type: string
    sql: ${TABLE}.Division_1 ;;
  }

  dimension: document_change {
    type: string
    sql: ${TABLE}.DocumentChange ;;
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.DocumentNumber ;;
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DocumentType ;;
  }

  dimension: document_version {
    type: string
    sql: ${TABLE}.DocumentVersion ;;
  }

  dimension: ean {
    label: "EAN"
    type: string
    sql: ${TABLE}.EAN ;;
  }

  dimension: ean_category {
    label: "EAN Category"
    type: string
    sql: ${TABLE}.EANCategory ;;
  }

  dimension: ean_upc {
    label: "EAN UPC"
    type: string
    sql: ${TABLE}.EANUPC ;;
  }

  dimension: empties_bill_material {
    type: string
    sql: ${TABLE}.EmptiesBillMaterial ;;
  }

  dimension: excess_volume_tolerance {
    type: number
    sql: ${TABLE}.ExcessVolumeTolerance ;;
  }

  dimension: excess_weight_tolerance {
    type: number
    sql: ${TABLE}.ExcessWeightTolerance ;;
  }

  dimension: external_material_group {
    type: string
    sql: ${TABLE}.ExternalMaterialGroup ;;
  }

  dimension: gross_weight {
    type: number
    sql: ${TABLE}.GrossWeight ;;
  }

  dimension: group_material {
    type: string
    sql: ${TABLE}.GroupMaterial ;;
  }

  dimension: hazardous_material_number {
    type: string
    sql: ${TABLE}.HazardousMaterialNumber ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.Height ;;
  }

  dimension: industry_sector {
    type: string
    sql: ${TABLE}.IndustrySector ;;
  }

  dimension: iso_description {
    label: "ISO Description"
    type: string
    sql: ${TABLE}.ISODescription ;;
  }

  dimension: label_form {
    type: string
    sql: ${TABLE}.LabelForm ;;
  }

  dimension: label_type {
    type: string
    sql: ${TABLE}.LabelType ;;
  }

  dimension: laboratory {
    type: string
    sql: ${TABLE}.Laboratory ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension_group: last_changed {
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
    sql: ${TABLE}.LastChanged ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.Length ;;
  }

  dimension: low_level_code {
    type: string
    sql: ${TABLE}.LowLevelCode ;;
  }

  dimension: material_category {
    type: string
    sql: ${TABLE}.MaterialCategory ;;
  }

  dimension: material_group {
    type: string
    sql: ${TABLE}.MaterialGroup ;;
  }

  dimension: material_group_1 {
    type: string
    sql: ${TABLE}.MaterialGroup_1 ;;
  }

  dimension: material_group_name {
    type: string
    sql: ${TABLE}.MaterialGroupName ;;
  }

  dimension: material_number {
    type: string
    sql: ${TABLE}.MaterialNumber ;;
  }

  dimension: material_type {
    type: string
    sql: ${TABLE}.MaterialType ;;
  }

  dimension: net_weight {
    type: number
    sql: ${TABLE}.NetWeight ;;
  }

  dimension: numberof_sheets {
    type: string
    sql: ${TABLE}.NumberofSheets ;;
  }

  dimension: old_material_number {
    type: string
    sql: ${TABLE}.OldMaterialNumber ;;
  }

  dimension: packaging_material_group {
    type: string
    sql: ${TABLE}.PackagingMaterialGroup ;;
  }

  dimension: page_format {
    type: string
    sql: ${TABLE}.PageFormat ;;
  }

  dimension: page_number {
    type: string
    sql: ${TABLE}.PageNumber ;;
  }

  dimension: price_band_category {
    type: string
    sql: ${TABLE}.PriceBandCategory ;;
  }

  dimension: price_level_group {
    type: string
    sql: ${TABLE}.PriceLevelGroup ;;
  }

  dimension: procurement_rule {
    type: string
    sql: ${TABLE}.ProcurementRule ;;
  }

  dimension: product_hierarchy {
    type: string
    sql: ${TABLE}.ProductHierarchy ;;
  }

  dimension: purchase_order_uom {
    label: "Purchase Order UoM"
    type: string
    sql: ${TABLE}.PurchaseOrderUoM ;;
  }

  dimension: purchasing_value_key {
    type: string
    sql: ${TABLE}.PurchasingValueKey ;;
  }

  dimension: purchasing_value_key_1 {
    type: string
    sql: ${TABLE}.PurchasingValueKey_1 ;;
  }

  dimension: qm_procurement_flag {
    label: "QM Procurement Flag"
    type: string
    sql: ${TABLE}.QMProcurementFlag ;;
  }

  dimension: reference_group_ref_material {
    type: string
    sql: ${TABLE}.ReferenceGroupRefMaterial ;;
  }

  dimension: season_category {
    type: string
    sql: ${TABLE}.SeasonCategory ;;
  }

  dimension: season_year {
    type: string
    sql: ${TABLE}.SeasonYear ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.Size ;;
  }

  dimension: stock_transfer_costing {
    type: string
    sql: ${TABLE}.StockTransferCosting ;;
  }

  dimension: storage_conditions {
    type: string
    sql: ${TABLE}.StorageConditions ;;
  }

  dimension: temperature {
    type: string
    sql: ${TABLE}.Temperature ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.Text ;;
  }

  dimension: transportation_group {
    type: string
    sql: ${TABLE}.TransportationGroup ;;
  }

  dimension: unit_of_weight {
    type: string
    sql: ${TABLE}.UnitofWeight ;;
  }

  dimension: unit_of_dimension {
    type: string
    sql: ${TABLE}.UoDimension ;;
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
    sql: ${TABLE}.ValidFromDate ;;
  }

  dimension: valuation_class {
    type: string
    sql: ${TABLE}.ValuationClass ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.Volume ;;
  }

  dimension: volume_unit {
    type: string
    sql: ${TABLE}.VolumeUnit ;;
  }

  dimension: weight_unit {
    type: string
    sql: ${TABLE}.WeightUnit ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.Width ;;
  }

  measure: count {
    type: count
    drill_fields: [material_group_name]
  }
}
