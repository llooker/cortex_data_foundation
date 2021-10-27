view: material_md {
  sql_table_name: `@{DATASET}.MaterialsMD`
    ;;
    view_label: "Product"

  dimension: material_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${client}," - ", ${material_number}," - ", ${language}) ;;
  }

  dimension: acceptance_at_origin {
    hidden: yes
    type: string
    sql: ${TABLE}.AcceptanceAtOrigin_WEORA ;;
  }

  dimension: adjustment_profile {
    hidden: yes
    type: string
    sql: ${TABLE}.AdjustmentProfile_ADPROF ;;
  }

  dimension: allowed_packaging_volume {
    hidden: yes
    type: number
    sql: ${TABLE}.AllowedPackagingVolume_ERVOL ;;
  }

  dimension: allowed_packaging_weight {
    hidden: yes
    type: number
    sql: ${TABLE}.AllowedPackagingWeight_ERGEW ;;
  }

  dimension: assign_effectivity_parameter_values_override_change_numbers {
    hidden: yes
    type: string
    sql: ${TABLE}.AssignEffectivityParameterValuesOverrideChangeNumbers_KZEFF ;;
  }

  dimension: assortment_list_type {
    hidden: yes
    type: string
    sql: ${TABLE}.AssortmentListType_BBTYP ;;
  }

  dimension: authorization_group {
    hidden: yes
    type: string
    sql: ${TABLE}.AuthorizationGroup_BEGRU ;;
  }

  dimension: base_unit_of_measure {
    hidden: yes
    type: string
    sql: ${TABLE}.BaseUnitOfMeasure_MEINS ;;
  }

  dimension: basic_material {
    hidden: yes
    type: string
    sql: ${TABLE}.BasicMaterial_WRKST ;;
  }

  dimension: batch_management_requirement_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchManagementRequirementIndicator_XCHPF ;;
  }

  dimension: cad_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.CadIndicator_CADKZ ;;
  }

  dimension: catalog_profile {
    hidden: yes
    type: string
    sql: ${TABLE}.CatalogProfile_RBNRM ;;
  }

  dimension: category_of_international_article_number_ean {
    hidden: yes
    type: string
    sql: ${TABLE}.CategoryOfInternationalArticleNumber__ean___NUMTP ;;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: comparison_price_unit {
    hidden: yes
    type: number
    sql: ${TABLE}.ComparisonPriceUnit_VPREH ;;
  }

  dimension: competitor {
    hidden: yes
    type: string
    sql: ${TABLE}.Competitor_KUNNR ;;
  }

  dimension: configurable_material {
    hidden: yes
    type: string
    sql: ${TABLE}.ConfigurableMaterial_KZKFG ;;
  }

  dimension: container_requirements {
    hidden: yes
    type: string
    sql: ${TABLE}.ContainerRequirements_BEHVO ;;
  }

  dimension: content_unit {
    hidden: yes
    type: string
    sql: ${TABLE}.ContentUnit_INHME ;;
  }

  dimension: country_of_origin_of_material {
    hidden: yes
    type: string
    sql: ${TABLE}.CountryOfOriginOfMaterial_HERKL ;;
  }

  dimension_group: created_on {
    hidden: yes
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
    sql: ${TABLE}.CreatedOn_ERSDA ;;
  }

  dimension: cross_distribution_chain_material_status {
    hidden: yes
    type: string
    sql: ${TABLE}.CrossDistributionChainMaterialStatus_MSTAV ;;
  }

  dimension: cross_plant_configurable_material {
    hidden: yes
    type: string
    sql: ${TABLE}.CrossPlantConfigurableMaterial_SATNR ;;
  }

  dimension: cross_plant_material_status {
    hidden: yes
    type: string
    sql: ${TABLE}.CrossPlantMaterialStatus_MSTAE ;;
  }

  dimension: dangerous_goods_indicator_profile {
    hidden: yes
    type: string
    sql: ${TABLE}.DangerousGoodsIndicatorProfile_PROFL ;;
  }

  dimension_group: cross_plant_material_status_is_valid_from {
    hidden: yes
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
    sql: ${TABLE}.DateFromWhichTheCrossPlantMaterialStatusIsValid_MSTDE ;;
  }

  dimension_group: xdistr_chain_material_status_is_valid_from {
    hidden: yes
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
    sql: ${TABLE}.DateFromWhichTheXDistrChainMaterialStatusIsValid_MSTDV ;;
  }

  dimension_group: last_change {
    hidden: yes
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
    sql: ${TABLE}.DateOfLastChange_LAEDA ;;
  }

  dimension: deactivated {
    hidden: yes
    type: string
    sql: ${TABLE}.Deactivated_ENTAR ;;
  }

  dimension_group: deletion {
    hidden: yes
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
    sql: ${TABLE}.DeletionDate_LIQDT ;;
  }

  dimension: division {
    hidden: yes
    type: string
    sql: ${TABLE}.Division_SPART ;;
  }

  dimension: document_change_number_without_document_management_system {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentChangeNumber__withoutDocumentManagementSystem___AESZN ;;
  }

  dimension: document_number_without_document_management_system {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentNumber__withoutDocumentManagementSystem___ZEINR ;;
  }

  dimension: document_type_without_document_management_system {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentType__withoutDocumentManagementSystem___ZEIAR ;;
  }

  dimension: document_version_without_document_management_system {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentVersion__withoutDocumentManagementSystem___ZEIVR ;;
  }

  dimension: empties_bill_of_material {
    hidden: yes
    type: string
    sql: ${TABLE}.EmptiesBillOfMaterial_MLGUT ;;
  }

  dimension: environmentally_relevant {
    hidden: yes
    type: string
    sql: ${TABLE}.EnvironmentallyRelevant_KZUMW ;;
  }

  dimension: european_article_number {
    hidden: yes
    type: string
    sql: ${TABLE}.EuropeanArticleNumber_EANNR ;;
  }

  dimension: ewm_catch_weight_tolerance_group_for_ewm {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmCatchWeightToleranceGroupForEwm_CWQTOLGR ;;
  }

  dimension: ewm_cw_catch_weight_profile_for_entering_cw_quantity {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmCw_CatchWeightProfileForEnteringCwQuantity_CWQPROC ;;
  }

  dimension: ewm_cw_logistics_unit_of_measure {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmCw_LogisticsUnitOfMeasure_LOGUNIT ;;
  }

  dimension: ewm_cw_material_is_acatch_weight_material {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmCw_MaterialIsACatchWeightMaterial_CWQREL ;;
  }

  dimension: excess_volume_tolerance_of_the_handling_unit {
    hidden: yes
    type: number
    sql: ${TABLE}.ExcessVolumeToleranceOfTheHandlingUnit_VOLTO ;;
  }

  dimension: excess_weight_tolerance_for_handling_unit {
    hidden: yes
    type: number
    sql: ${TABLE}.ExcessWeightToleranceForHandlingUnit_GEWTO ;;
  }

  dimension: expiration_date_sled {
    hidden: yes
    type: string
    sql: ${TABLE}.ExpirationDate_SLED_BBD ;;
  }

  dimension: external_material_group {
    hidden: yes
    type: string
    sql: ${TABLE}.ExternalMaterialGroup_EXTWG ;;
  }

  dimension: flag_material_for_deletion_at_client_level {
    hidden: yes
    type: string
    sql: ${TABLE}.FlagMaterialForDeletionAtClientLevel_LVORM ;;
  }

  dimension: form_name_ps {
    hidden: yes
    type: string
    sql: ${TABLE}.FormName_PS_SMARTFORM ;;
  }

  dimension: general_item_category_group {
    hidden: yes
    type: string
    sql: ${TABLE}.GeneralItemCategoryGroup_MTPOS_MARA ;;
  }

  dimension: generic_material_with_logistical_variants {
    hidden: yes
    type: string
    sql: ${TABLE}.GenericMaterialWithLogisticalVariants_BFLME ;;
  }

  dimension: global_trade_item_number_variant {
    hidden: yes
    type: string
    sql: ${TABLE}.GlobalTradeItemNumberVariant_GTIN_VARIANT ;;
  }

  dimension: gross_contents {
    hidden: yes
    type: number
    sql: ${TABLE}.GrossContents_INHBR ;;
  }

  dimension: gross_weight {
    hidden: yes
    type: number
    sql: ${TABLE}.GrossWeight_BRGEW ;;
  }

  dimension: handling_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.HandlingIndicator_HNDLCODE ;;
  }

  dimension: handling_unit_type {
    hidden: yes
    type: string
    sql: ${TABLE}.HandlingUnitType_HUTYP ;;
  }

  dimension: hazardous_material_number {
    hidden: yes
    type: string
    sql: ${TABLE}.HazardousMaterialNumber_STOFF ;;
  }

  dimension: height {
    hidden: yes
    type: number
    sql: ${TABLE}.Height_HOEHE ;;
  }

  dimension: id_for_an_intellectual_property_crm_product {
    hidden: yes
    type: string
    sql: ${TABLE}.IdForAnIntellectualProperty__crmProduct___IPMIPPRODUCT ;;
  }

  dimension: indicator_approved_batch_record_required_ {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_ApprovedBatchRecordRequired_XGCHP ;;
  }

  dimension: indicator_global_data_synchronization_relevant {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_GlobalDataSynchronizationRelevant_GDS_RELEVANT ;;
  }

  dimension: indicator_highly_viscous {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_HighlyViscous_IHIVI ;;
  }

  dimension: indicator_in_bulkliquid {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_InBulkliquid_ILOOS ;;
  }

  dimension: indicator_material_can_be_co_product {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_MaterialCanBeCoProduct_KZKUP ;;
  }

  dimension: indicator_product_composition_printed_on_packaging {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_ProductCompositionPrintedOnPackaging_PRZUS ;;
  }

  dimension: indicator_the_material_has_afollow_up_material {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_TheMaterialHasAFollowUpMaterial_KZNFM ;;
  }

  dimension: industry_sector {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustrySector_MBRSH ;;
  }

  dimension: industry_standard_description_such_as_ansi_or_iso {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustryStandardDescription__suchAsAnsiOrIso___NORMT ;;
  }

  dimension: internal_object_number {
    hidden: yes
    type: string
    sql: ${TABLE}.InternalObjectNumber_CUOBF ;;
  }

  dimension: international_article_number_eanupc {
    hidden: yes
    type: string
    sql: ${TABLE}.InternationalArticleNumber__eanupc___EAN11 ;;
  }

  dimension: label_form {
    hidden: yes
    type: string
    sql: ${TABLE}.LabelForm_ETIFO ;;
  }

  dimension: label_type {
    hidden: yes
    type: string
    sql: ${TABLE}.LabelType_ETIAR ;;
  }

  dimension: laboratorydesign_office {
    hidden: yes
    type: string
    sql: ${TABLE}.LaboratorydesignOffice_LABOR ;;
  }

  dimension: language {
    hidden: yes
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: length {
    hidden: yes
    type: number
    sql: ${TABLE}.Length_LAENG ;;
  }

  dimension: level_of_explicitness_for_serial_number {
    hidden: yes
    type: string
    sql: ${TABLE}.LevelOfExplicitnessForSerialNumber_SERLV ;;
  }

  dimension: low_level_code {
    hidden: yes
    type: string
    sql: ${TABLE}.LowLevelCode_DISST ;;
  }

  dimension: maintenance_status_of_complete_material {
    hidden: yes
    type: string
    sql: ${TABLE}.MaintenanceStatusOfCompleteMaterial_VPSTA ;;
  }

  dimension: maintenance_status {
    hidden: yes
    type: string
    sql: ${TABLE}.MaintenanceStatus_PSTAT ;;
  }

  dimension: manufacturer_number {
    hidden: yes
    type: string
    sql: ${TABLE}.ManufacturerNumber_MFRNR ;;
  }

  dimension: manufacturer_part_number {
    hidden: yes
    type: string
    sql: ${TABLE}.ManufacturerPartNumber_MFRPN ;;
  }

  dimension: material_category {
    type: string
    sql: ${TABLE}.MaterialCategory_ATTYP ;;
  }

  dimension: material_completion_level {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialCompletionLevel_COMPL ;;
  }

  dimension: material_freight_group {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialFreightGroup_MFRGR ;;
  }

  dimension: material_group {
    group_label: "Material Group"
    type: string
    sql: ${TABLE}.MaterialGroup_MATKL ;;
  }

  dimension: material_group_packaging_materials {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup_PackagingMaterials_MAGRV ;;
  }

  dimension: material_is_locked {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialIsLocked_MATFI ;;
  }

  dimension: material_number {
    label: "Product Number"
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
    link: {
      label: "Product Snapshot"
      url: "/dashboards-next/cortex_data_foundation::product_snapshot?Product%20Number={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: material_number_of_the_generic_material_in_prepack_materials {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialNumberOfTheGenericMaterialInPrepackMaterials_GENNR ;;
  }

  dimension: material_qualifies_for_discount_in_kind {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialQualifiesForDiscountInKind_NRFHG ;;
  }

  dimension: material_text {
    label: "Product Description"
    type: string
    sql: ${TABLE}.MaterialText_MAKTX ;;
    link: {
      label: "Product Snapshot"
      url: "/dashboards-next/cortex_data_foundation::product_snapshot?Product+Text={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: material_type {
    type: string
    sql: ${TABLE}.MaterialType_MTART ;;
  }

  dimension: maximum_allowed_capacity_of_packaging_material {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumAllowedCapacityOfPackagingMaterial_MAXC ;;
  }

  dimension: maximum_level_by_volume {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumLevel__byVolume___FUELG ;;
  }

  dimension: maximum_packing_height_of_packaging_material {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumPackingHeightOfPackagingMaterial_MAXH ;;
  }

  dimension: maximum_packing_length_of_packaging_material {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumPackingLengthOfPackagingMaterial_MAXL ;;
  }

  dimension: maximum_packing_width_of_packaging_material {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumPackingWidthOfPackagingMaterial_MAXB ;;
  }

  dimension: medium {
    hidden: yes
    type: string
    sql: ${TABLE}.Medium_MEDIUM ;;
  }

  dimension: mfr_part_profile {
    hidden: yes
    type: string
    sql: ${TABLE}.MfrPartProfile_MPROF ;;
  }

  dimension: minimum_remaining_shelf_life {
    hidden: yes
    type: number
    sql: ${TABLE}.MinimumRemainingShelfLife_MHDRZ ;;
  }

  dimension: name_of_person_who_changed_object {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfPersonWhoChangedObject_AENAM ;;
  }

  dimension: name_of_person_who_created_the_object {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfPersonWhoCreatedTheObject_ERNAM ;;
  }

  dimension: net_contents {
    hidden: yes
    type: number
    sql: ${TABLE}.NetContents_INHAL ;;
  }

  dimension: net_weight {
    hidden: yes
    type: number
    sql: ${TABLE}.NetWeight_NTGEW ;;
  }

  dimension: number_inventory_managed_material {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberInventoryManagedMaterial_BMATN ;;
  }

  dimension: number_of_sheets_without_document_management_system {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfSheets__withoutDocumentManagementSystem___BLANZ ;;
  }

  dimension: old_material_number {
    hidden: yes
    type: string
    sql: ${TABLE}.OldMaterialNumber_BISMT ;;
  }

  dimension: order_unit {
    hidden: yes
    type: string
    sql: ${TABLE}.OrderUnit_BSTME ;;
  }

  dimension: overcapacity_tolerance_of_the_handling_unit {
    hidden: yes
    type: number
    sql: ${TABLE}.OvercapacityToleranceOfTheHandlingUnit_MAXC_TOL ;;
  }

  dimension: packaging_material_is_closed_packaging {
    hidden: yes
    type: string
    sql: ${TABLE}.PackagingMaterialIsClosedPackaging_KZGVH ;;
  }

  dimension: packaging_material_type {
    hidden: yes
    type: string
    sql: ${TABLE}.PackagingMaterialType_VHART ;;
  }

  dimension: page_format_of_document_without_document_management_system {
    hidden: yes
    type: string
    sql: ${TABLE}.PageFormatOfDocument__withoutDocumentManagementSystem___ZEIFO ;;
  }

  dimension: page_format_of_production_memo {
    hidden: yes
    type: string
    sql: ${TABLE}.PageFormatOfProductionMemo_FORMT ;;
  }

  dimension: page_number_of_document_without_document_management_system {
    hidden: yes
    type: string
    sql: ${TABLE}.PageNumberOfDocument__withoutDocumentManagementSystem___BLATT ;;
  }

  dimension: period_indicator_for_shelf_life_expiration_date {
    hidden: yes
    type: string
    sql: ${TABLE}.PeriodIndicatorForShelfLifeExpirationDate_IPRKZ ;;
  }

  dimension: physical_commodity{
    hidden: yes
    type: string
    sql: ${TABLE}.PhysicalCommodity_COMMODITY ;;
  }

  dimension: pilferable {
    hidden: yes
    type: string
    sql: ${TABLE}.Pilferable_PILFERABLE ;;
  }

  dimension: price_band_category {
    hidden: yes
    type: string
    sql: ${TABLE}.PriceBandCategory_PLGTP ;;
  }

  dimension: pricing_profile_for_variants {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingProfileForVariants_SPROF ;;
  }

  dimension: pricing_reference_material {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingReferenceMaterial_PMATA ;;
  }

  dimension: procurement_rule {
    hidden: yes
    type: string
    sql: ${TABLE}.ProcurementRule_BWVOR ;;
  }

  dimension: product_allocation_determination_procedure {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductAllocationDeterminationProcedure_KOSCH ;;
  }

  dimension: product_hierarchy {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductHierarchy_PRDHA ;;
  }

  dimension: production_inspection_memo {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductioninspectionMemo_FERTH ;;
  }

  dimension: purchasing_value_key {
    hidden: yes
    type: string
    sql: ${TABLE}.PurchasingValueKey_EKWSL ;;
  }

  dimension: qm_in_procurement_is_active {
    hidden: yes
    type: string
    sql: ${TABLE}.QmInProcurementIsActive_QMPUR ;;
  }

  dimension: quality_inspection_group {
    hidden: yes
    type: string
    sql: ${TABLE}.QualityInspectionGroup_QGRP ;;
  }

  dimension: quantity_conversion_method {
    hidden: yes
    type: string
    sql: ${TABLE}.QuantityConversionMethod_CMETH ;;
  }

  dimension: quantity_number_of_grgi_slips_to_be_printed {
    hidden: yes
    type: number
    sql: ${TABLE}.Quantity_NumberOfGrgiSlipsToBePrinted_WESCH ;;
  }

  dimension: quarantine_period {
    hidden: yes
    type: number
    sql: ${TABLE}.QuarantinePeriod_QQTIME ;;
  }

  dimension: reference_material_for_materials_packed_in_same_way {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceMaterialForMaterialsPackedInSameWay_RMATP ;;
  }

  dimension: relevant_for_configuration_management {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantForConfigurationManagement_CMREL ;;
  }

  dimension: relevant_for_hazardous_substances {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantForHazardousSubstances_HAZMAT ;;
  }

  dimension: revision_level_has_been_assigned_to_the_material {
    hidden: yes
    type: string
    sql: ${TABLE}.RevisionLevelHasBeenAssignedToTheMaterial_KZREV ;;
  }

  dimension: rollout_in_a_season {
    hidden: yes
    type: string
    sql: ${TABLE}.RolloutInASeason_SAITY ;;
  }

  dimension: rounding_rule_for_calculation_of_sled {
    hidden: yes
    type: string
    sql: ${TABLE}.RoundingRuleForCalculationOfSled_RDMHD ;;
  }

  dimension: season_category {
    hidden: yes
    type: string
    sql: ${TABLE}.SeasonCategory_SAISO ;;
  }

  dimension: season_year {
    hidden: yes
    type: string
    sql: ${TABLE}.SeasonYear_SAISJ ;;
  }

  dimension: serial_number_profile {
    hidden: yes
    type: string
    sql: ${TABLE}.SerialNumberProfile_SERIAL ;;
  }

  dimension: size_dimensions {
    hidden: yes
    type: string
    sql: ${TABLE}.Sizedimensions_GROES ;;
  }

  dimension: source_of_supply {
    hidden: yes
    type: string
    sql: ${TABLE}.SourceOfSupply_BWSCL ;;
  }

  dimension: stacking_factor {
    hidden: yes
    type: number
    sql: ${TABLE}.StackingFactor_STFAK ;;
  }

  dimension: standard_hu_type_hutyp {
    hidden: yes
    type: string
    sql: ${TABLE}.StandardHuType_HUTYP_DFLT ;;
  }

  dimension: stock_transfer_net_change_costing {
    hidden: yes
    type: string
    sql: ${TABLE}.StockTransferNetChangeCosting_AEKLK ;;
  }

  dimension: storage_conditions {
    hidden: yes
    type: string
    sql: ${TABLE}.StorageConditions_RAUBE ;;
  }

  dimension: storage_percentage {
    hidden: yes
    type: number
    sql: ${TABLE}.StoragePercentage_MHDLP ;;
  }

  dimension: tax_classification_of_the_material {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxClassificationOfTheMaterial_TAKLV ;;
  }

  dimension: temperature_conditions_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.TemperatureConditionsIndicator_TEMPB ;;
  }

  dimension: time_unit_for_quarantine_period {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeUnitForQuarantinePeriod_QQTIMEUOM ;;
  }

  dimension: total_shelf_life {
    hidden: yes
    type: number
    sql: ${TABLE}.TotalShelfLife_MHDHB ;;
  }

  dimension: transportation_group {
    hidden: yes
    type: string
    sql: ${TABLE}.TransportationGroup_TRAGR ;;
  }

  dimension: unit_of_dimension_for_length_width_height {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfDimensionForLengthwidthheight_MEABM ;;
  }

  dimension: unit_of_measure_for_maximum_packing_length_width_height {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfMeasureForMaximumPackingLengthwidthheight_MAXDIM_UOM ;;
  }

  dimension: unit_of_weight_allowed_packaging_weight {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfWeight__allowedPackagingWeight___ERGEI ;;
  }

  dimension: units_of_measure_usage {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitsOfMeasureUsage_KZWSM ;;
  }

  dimension_group: valid_from {
    hidden: yes
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
    sql: ${TABLE}.ValidFromDate_DATAB ;;
  }

  dimension: variable_purchase_order_unit_active {
    hidden: yes
    type: string
    sql: ${TABLE}.VariablePurchaseOrderUnitActive_VABME ;;
  }

  dimension: variable_tare_weight {
    hidden: yes
    type: string
    sql: ${TABLE}.VariableTareWeight_TARE_VAR ;;
  }

  dimension: variant_price_allowed_for_material_master {
    hidden: yes
    type: string
    sql: ${TABLE}.VariantPriceAllowed__forMaterialMaster___ALLOW_PMAT_IGNO ;;
  }

  dimension: volume_unit_allowed_packaging_volume {
    hidden: yes
    type: string
    sql: ${TABLE}.VolumeUnit__allowedPackagingVolume___ERVOE ;;
  }

  dimension: volume_unit {
    hidden: yes
    type: string
    sql: ${TABLE}.VolumeUnit_VOLEH ;;
  }

  dimension: volume {
    hidden: yes
    type: number
    sql: ${TABLE}.Volume_VOLUM ;;
  }

  dimension: warehouse_material_group {
    hidden: yes
    type: string
    sql: ${TABLE}.WarehouseMaterialGroup_WHMATGR ;;
  }

  dimension: warehouse_storage_condition {
    hidden: yes
    type: string
    sql: ${TABLE}.WarehouseStorageCondition_WHSTC ;;
  }

  dimension: weight_unit {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightUnit_GEWEI ;;
  }

  dimension: width {
    hidden: yes
    type: number
    sql: ${TABLE}.Width_BREIT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
