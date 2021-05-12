view: material_md {
  sql_table_name: `lucias-rabia.SAP_REPORTING.MaterialMD`
    ;;
    view_label: "Material"

  dimension: acceptance_at_origin_weora {
    hidden: yes
    type: string
    sql: ${TABLE}.AcceptanceAtOrigin_WEORA ;;
  }

  dimension: adjustment_profile_adprof {
    hidden: yes
    type: string
    sql: ${TABLE}.AdjustmentProfile_ADPROF ;;
  }

  dimension: allowed_packaging_volume_ervol {
    hidden: yes
    type: number
    sql: ${TABLE}.AllowedPackagingVolume_ERVOL ;;
  }

  dimension: allowed_packaging_weight_ergew {
    hidden: yes
    type: number
    sql: ${TABLE}.AllowedPackagingWeight_ERGEW ;;
  }

  dimension: assign_effectivity_parameter_values_override_change_numbers_kzeff {
    hidden: yes
    type: string
    sql: ${TABLE}.AssignEffectivityParameterValuesOverrideChangeNumbers_KZEFF ;;
  }

  dimension: assortment_list_type_bbtyp {
    hidden: yes
    type: string
    sql: ${TABLE}.AssortmentListType_BBTYP ;;
  }

  dimension: authorization_group_begru {
    hidden: yes
    type: string
    sql: ${TABLE}.AuthorizationGroup_BEGRU ;;
  }

  dimension: base_unit_of_measure_meins {
    type: string
    sql: ${TABLE}.BaseUnitOfMeasure_MEINS ;;
  }

  dimension: basic_material_wrkst {
    type: string
    sql: ${TABLE}.BasicMaterial_WRKST ;;
  }

  dimension: batch_management_requirement_indicator_xchpf {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchManagementRequirementIndicator_XCHPF ;;
  }

  dimension: cad_indicator_cadkz {
    hidden: yes
    type: string
    sql: ${TABLE}.CadIndicator_CADKZ ;;
  }

  dimension: catalog_profile_rbnrm {
    hidden: yes
    type: string
    sql: ${TABLE}.CatalogProfile_RBNRM ;;
  }

  dimension: category_of_international_article_number__ean___numtp {
    hidden: yes
    type: string
    sql: ${TABLE}.CategoryOfInternationalArticleNumber__ean___NUMTP ;;
  }

  dimension: client_mandt {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: comparison_price_unit_vpreh {
    hidden: yes
    type: number
    sql: ${TABLE}.ComparisonPriceUnit_VPREH ;;
  }

  dimension: competitor_kunnr {
    type: string
    sql: ${TABLE}.Competitor_KUNNR ;;
  }

  dimension: configurable_material_kzkfg {
    hidden: yes
    type: string
    sql: ${TABLE}.ConfigurableMaterial_KZKFG ;;
  }

  dimension: container_requirements_behvo {
    hidden: yes
    type: string
    sql: ${TABLE}.ContainerRequirements_BEHVO ;;
  }

  dimension: content_unit_inhme {
    type: string
    sql: ${TABLE}.ContentUnit_INHME ;;
  }

  dimension: country_of_origin_of_material_herkl {
    type: string
    sql: ${TABLE}.CountryOfOriginOfMaterial_HERKL ;;
  }

  dimension_group: created_on_ersda {
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

  dimension: cross_distribution_chain_material_status_mstav {
    hidden: yes
    type: string
    sql: ${TABLE}.CrossDistributionChainMaterialStatus_MSTAV ;;
  }

  dimension: cross_plant_configurable_material_satnr {
    hidden: yes
    type: string
    sql: ${TABLE}.CrossPlantConfigurableMaterial_SATNR ;;
  }

  dimension: cross_plant_material_status_mstae {
    hidden: yes
    type: string
    sql: ${TABLE}.CrossPlantMaterialStatus_MSTAE ;;
  }

  dimension: dangerous_goods_indicator_profile_profl {
    hidden: yes
    type: string
    sql: ${TABLE}.DangerousGoodsIndicatorProfile_PROFL ;;
  }

  dimension_group: date_from_which_the_cross_plant_material_status_is_valid_mstde {
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

  dimension_group: date_from_which_the_xdistr_chain_material_status_is_valid_mstdv {
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

  dimension_group: date_of_last_change_laeda {
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

  dimension: deactivated_entar {
    hidden: yes
    type: string
    sql: ${TABLE}.Deactivated_ENTAR ;;
  }

  dimension_group: deletion_date_liqdt {
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

  dimension: division_spart {
    hidden: yes
    type: string
    sql: ${TABLE}.Division_SPART ;;
  }

  dimension: document_change_number_without_document_management_system_aeszn {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentChangeNumber__withoutDocumentManagementSystem___AESZN ;;
  }

  dimension: document_number_without_document_management_system_zeinr {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentNumber__withoutDocumentManagementSystem___ZEINR ;;
  }

  dimension: document_type_without_document_management_system_zeiar {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentType__withoutDocumentManagementSystem___ZEIAR ;;
  }

  dimension: document_version_without_document_management_system_zeivr {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentVersion__withoutDocumentManagementSystem___ZEIVR ;;
  }

  dimension: empties_bill_of_material_mlgut {
    hidden: yes
    type: string
    sql: ${TABLE}.EmptiesBillOfMaterial_MLGUT ;;
  }

  dimension: environmentally_relevant_kzumw {
    hidden: yes
    type: string
    sql: ${TABLE}.EnvironmentallyRelevant_KZUMW ;;
  }

  dimension: european_article_number_eannr {
    hidden: yes
    type: string
    sql: ${TABLE}.EuropeanArticleNumber_EANNR ;;
  }

  dimension: ewm_catch_weight_tolerance_group_for_ewm_cwqtolgr {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmCatchWeightToleranceGroupForEwm_CWQTOLGR ;;
  }

  dimension: ewm_cw_catch_weight_profile_for_entering_cw_quantity_cwqproc {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmCw_CatchWeightProfileForEnteringCwQuantity_CWQPROC ;;
  }

  dimension: ewm_cw_logistics_unit_of_measure_logunit {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmCw_LogisticsUnitOfMeasure_LOGUNIT ;;
  }

  dimension: ewm_cw_material_is_acatch_weight_material_cwqrel {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmCw_MaterialIsACatchWeightMaterial_CWQREL ;;
  }

  dimension: excess_volume_tolerance_of_the_handling_unit_volto {
    hidden: yes
    type: number
    sql: ${TABLE}.ExcessVolumeToleranceOfTheHandlingUnit_VOLTO ;;
  }

  dimension: excess_weight_tolerance_for_handling_unit_gewto {
    hidden: yes
    type: number
    sql: ${TABLE}.ExcessWeightToleranceForHandlingUnit_GEWTO ;;
  }

  dimension: expiration_date_sled_bbd {
    hidden: yes
    type: string
    sql: ${TABLE}.ExpirationDate_SLED_BBD ;;
  }

  dimension: external_material_group_extwg {
    hidden: yes
    type: string
    sql: ${TABLE}.ExternalMaterialGroup_EXTWG ;;
  }

  dimension: flag_material_for_deletion_at_client_level_lvorm {
    hidden: yes
    type: string
    sql: ${TABLE}.FlagMaterialForDeletionAtClientLevel_LVORM ;;
  }

  dimension: form_name_ps_smartform {
    hidden: yes
    type: string
    sql: ${TABLE}.FormName_PS_SMARTFORM ;;
  }

  dimension: general_item_category_group_mtpos_mara {
    type: string
    sql: ${TABLE}.GeneralItemCategoryGroup_MTPOS_MARA ;;
  }

  dimension: generic_material_with_logistical_variants_bflme {
    hidden: yes
    type: string
    sql: ${TABLE}.GenericMaterialWithLogisticalVariants_BFLME ;;
  }

  dimension: global_trade_item_number_variant_gtin_variant {
    hidden: yes
    type: string
    sql: ${TABLE}.GlobalTradeItemNumberVariant_GTIN_VARIANT ;;
  }

  dimension: gross_contents_inhbr {
    type: number
    sql: ${TABLE}.GrossContents_INHBR ;;
  }

  dimension: gross_weight_brgew {
    type: number
    sql: ${TABLE}.GrossWeight_BRGEW ;;
  }

  dimension: handling_indicator_hndlcode {
    hidden: yes
    type: string
    sql: ${TABLE}.HandlingIndicator_HNDLCODE ;;
  }

  dimension: handling_unit_type_hutyp {
    hidden: yes
    type: string
    sql: ${TABLE}.HandlingUnitType_HUTYP ;;
  }

  dimension: hazardous_material_number_stoff {
    hidden: yes
    type: string
    sql: ${TABLE}.HazardousMaterialNumber_STOFF ;;
  }

  dimension: height_hoehe {
    hidden: yes
    type: number
    sql: ${TABLE}.Height_HOEHE ;;
  }

  dimension: id_for_an_intellectual_property__crm_product___ipmipproduct {
    hidden: yes
    type: string
    sql: ${TABLE}.IdForAnIntellectualProperty__crmProduct___IPMIPPRODUCT ;;
  }

  dimension: indicator_approved_batch_record_required_xgchp {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_ApprovedBatchRecordRequired_XGCHP ;;
  }

  dimension: indicator_global_data_synchronization_relevant_gds_relevant {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_GlobalDataSynchronizationRelevant_GDS_RELEVANT ;;
  }

  dimension: indicator_highly_viscous_ihivi {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_HighlyViscous_IHIVI ;;
  }

  dimension: indicator_in_bulkliquid_iloos {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_InBulkliquid_ILOOS ;;
  }

  dimension: indicator_material_can_be_co_product_kzkup {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_MaterialCanBeCoProduct_KZKUP ;;
  }

  dimension: indicator_product_composition_printed_on_packaging_przus {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_ProductCompositionPrintedOnPackaging_PRZUS ;;
  }

  dimension: indicator_the_material_has_afollow_up_material_kznfm {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_TheMaterialHasAFollowUpMaterial_KZNFM ;;
  }

  dimension: industry_sector_mbrsh {
    type: string
    sql: ${TABLE}.IndustrySector_MBRSH ;;
  }

  dimension: industry_standard_description__such_as_ansi_or_iso___normt {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustryStandardDescription__suchAsAnsiOrIso___NORMT ;;
  }

  dimension: internal_object_number_cuobf {
    hidden: yes
    type: string
    sql: ${TABLE}.InternalObjectNumber_CUOBF ;;
  }

  dimension: international_article_number__eanupc___ean11 {
    hidden: yes
    type: string
    sql: ${TABLE}.InternationalArticleNumber__eanupc___EAN11 ;;
  }

  dimension: label_form_etifo {
    type: string
    sql: ${TABLE}.LabelForm_ETIFO ;;
  }

  dimension: label_type_etiar {
    type: string
    sql: ${TABLE}.LabelType_ETIAR ;;
  }

  dimension: laboratorydesign_office_labor {
    hidden: yes
    type: string
    sql: ${TABLE}.LaboratorydesignOffice_LABOR ;;
  }

  dimension: language_spras {
    hidden: yes
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: length_laeng {
    hidden: yes
    type: number
    sql: ${TABLE}.Length_LAENG ;;
  }

  dimension: level_of_explicitness_for_serial_number_serlv {
    hidden: yes
    type: string
    sql: ${TABLE}.LevelOfExplicitnessForSerialNumber_SERLV ;;
  }

  dimension: low_level_code_disst {
    hidden: yes
    type: string
    sql: ${TABLE}.LowLevelCode_DISST ;;
  }

  dimension: maintenance_status_of_complete_material_vpsta {
    hidden: yes
    type: string
    sql: ${TABLE}.MaintenanceStatusOfCompleteMaterial_VPSTA ;;
  }

  dimension: maintenance_status_pstat {
    hidden: yes
    type: string
    sql: ${TABLE}.MaintenanceStatus_PSTAT ;;
  }

  dimension: manufacturer_number_mfrnr {
    type: string
    sql: ${TABLE}.ManufacturerNumber_MFRNR ;;
  }

  dimension: manufacturer_part_number_mfrpn {
    type: string
    sql: ${TABLE}.ManufacturerPartNumber_MFRPN ;;
  }

  dimension: material_category_attyp {
    type: string
    sql: ${TABLE}.MaterialCategory_ATTYP ;;
  }

  dimension: material_completion_level_compl {
    type: string
    sql: ${TABLE}.MaterialCompletionLevel_COMPL ;;
  }

  dimension: material_freight_group_mfrgr {
    type: string
    sql: ${TABLE}.MaterialFreightGroup_MFRGR ;;
  }

  dimension: material_group_matkl {
    type: string
    sql: ${TABLE}.MaterialGroup_MATKL ;;
  }

  dimension: material_group_packaging_materials_magrv {
    type: string
    sql: ${TABLE}.MaterialGroup_PackagingMaterials_MAGRV ;;
  }

  dimension: material_is_locked_matfi {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialIsLocked_MATFI ;;
  }

  dimension: material_number_matnr {
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
    link: {
      label: "Material Details"
      url: "/dashboards-next/42?Material%20Number%20Matnr={{ filterable_value }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: material_number_of_the_generic_material_in_prepack_materials_gennr {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialNumberOfTheGenericMaterialInPrepackMaterials_GENNR ;;
  }

  dimension: material_qualifies_for_discount_in_kind_nrfhg {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialQualifiesForDiscountInKind_NRFHG ;;
  }

  dimension: material_text_maktx {
    type: string
    sql: ${TABLE}.MaterialText_MAKTX ;;
    link: {
      label: "Material Details"
      url: "/dashboards-next/42?Material%20Text%20Maktx={{ filterable_value }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: material_type_mtart {
    type: string
    sql: ${TABLE}.MaterialType_MTART ;;
  }

  dimension: maximum_allowed_capacity_of_packaging_material_maxc {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumAllowedCapacityOfPackagingMaterial_MAXC ;;
  }

  dimension: maximum_level_by_volume_fuelg {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumLevel__byVolume___FUELG ;;
  }

  dimension: maximum_packing_height_of_packaging_material_maxh {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumPackingHeightOfPackagingMaterial_MAXH ;;
  }

  dimension: maximum_packing_length_of_packaging_material_maxl {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumPackingLengthOfPackagingMaterial_MAXL ;;
  }

  dimension: maximum_packing_width_of_packaging_material_maxb {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumPackingWidthOfPackagingMaterial_MAXB ;;
  }

  dimension: medium_medium {
    hidden: yes
    type: string
    sql: ${TABLE}.Medium_MEDIUM ;;
  }

  dimension: mfr_part_profile_mprof {
    hidden: yes
    type: string
    sql: ${TABLE}.MfrPartProfile_MPROF ;;
  }

  dimension: minimum_remaining_shelf_life_mhdrz {
    hidden: yes
    type: number
    sql: ${TABLE}.MinimumRemainingShelfLife_MHDRZ ;;
  }

  dimension: name_of_person_who_changed_object_aenam {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfPersonWhoChangedObject_AENAM ;;
  }

  dimension: name_of_person_who_created_the_object_ernam {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfPersonWhoCreatedTheObject_ERNAM ;;
  }

  dimension: net_contents_inhal {
    type: number
    sql: ${TABLE}.NetContents_INHAL ;;
  }

  dimension: net_weight_ntgew {
    type: number
    sql: ${TABLE}.NetWeight_NTGEW ;;
  }

  dimension: number_inventory_managed_material_bmatn {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberInventoryManagedMaterial_BMATN ;;
  }

  dimension: number_of_sheets_without_document_management_system_blanz {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfSheets__withoutDocumentManagementSystem___BLANZ ;;
  }

  dimension: old_material_number_bismt {
    hidden: yes
    type: string
    sql: ${TABLE}.OldMaterialNumber_BISMT ;;
  }

  dimension: order_unit_bstme {
    type: string
    sql: ${TABLE}.OrderUnit_BSTME ;;
  }

  dimension: overcapacity_tolerance_of_the_handling_unit_maxc_tol {
    hidden: yes
    type: number
    sql: ${TABLE}.OvercapacityToleranceOfTheHandlingUnit_MAXC_TOL ;;
  }

  dimension: packaging_material_is_closed_packaging_kzgvh {
    hidden: yes
    type: string
    sql: ${TABLE}.PackagingMaterialIsClosedPackaging_KZGVH ;;
  }

  dimension: packaging_material_type_vhart {
    hidden: yes
    type: string
    sql: ${TABLE}.PackagingMaterialType_VHART ;;
  }

  dimension: page_format_of_document_without_document_management_system_zeifo {
    hidden: yes
    type: string
    sql: ${TABLE}.PageFormatOfDocument__withoutDocumentManagementSystem___ZEIFO ;;
  }

  dimension: page_format_of_production_memo_formt {
    hidden: yes
    type: string
    sql: ${TABLE}.PageFormatOfProductionMemo_FORMT ;;
  }

  dimension: page_number_of_document_without_document_management_system_blatt {
    hidden: yes
    type: string
    sql: ${TABLE}.PageNumberOfDocument__withoutDocumentManagementSystem___BLATT ;;
  }

  dimension: period_indicator_for_shelf_life_expiration_date_iprkz {
    hidden: yes
    type: string
    sql: ${TABLE}.PeriodIndicatorForShelfLifeExpirationDate_IPRKZ ;;
  }

  dimension: physical_commodity_commodity {
    hidden: yes
    type: string
    sql: ${TABLE}.PhysicalCommodity_COMMODITY ;;
  }

  dimension: pilferable_pilferable {
    hidden: yes
    type: string
    sql: ${TABLE}.Pilferable_PILFERABLE ;;
  }

  dimension: price_band_category_plgtp {
    hidden: yes
    type: string
    sql: ${TABLE}.PriceBandCategory_PLGTP ;;
  }

  dimension: pricing_profile_for_variants_sprof {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingProfileForVariants_SPROF ;;
  }

  dimension: pricing_reference_material_pmata {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingReferenceMaterial_PMATA ;;
  }

  dimension: procurement_rule_bwvor {
    hidden: yes
    type: string
    sql: ${TABLE}.ProcurementRule_BWVOR ;;
  }

  dimension: product_allocation_determination_procedure_kosch {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductAllocationDeterminationProcedure_KOSCH ;;
  }

  dimension: product_hierarchy_prdha {
    type: string
    sql: ${TABLE}.ProductHierarchy_PRDHA ;;
  }

  dimension: production_inspection_memo_ferth {
    type: string
    sql: ${TABLE}.ProductioninspectionMemo_FERTH ;;
  }

  dimension: purchasing_value_key_ekwsl {
    hidden: yes
    type: string
    sql: ${TABLE}.PurchasingValueKey_EKWSL ;;
  }

  dimension: qm_in_procurement_is_active_qmpur {
    hidden: yes
    type: string
    sql: ${TABLE}.QmInProcurementIsActive_QMPUR ;;
  }

  dimension: quality_inspection_group_qgrp {
    hidden: yes
    type: string
    sql: ${TABLE}.QualityInspectionGroup_QGRP ;;
  }

  dimension: quantity_conversion_method_cmeth {
    hidden: yes
    type: string
    sql: ${TABLE}.QuantityConversionMethod_CMETH ;;
  }

  dimension: quantity_number_of_grgi_slips_to_be_printed_wesch {
    hidden: yes
    type: number
    sql: ${TABLE}.Quantity_NumberOfGrgiSlipsToBePrinted_WESCH ;;
  }

  dimension: quarantine_period_qqtime {
    hidden: yes
    type: number
    sql: ${TABLE}.QuarantinePeriod_QQTIME ;;
  }

  dimension: reference_material_for_materials_packed_in_same_way_rmatp {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceMaterialForMaterialsPackedInSameWay_RMATP ;;
  }

  dimension: relevant_for_configuration_management_cmrel {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantForConfigurationManagement_CMREL ;;
  }

  dimension: relevant_for_hazardous_substances_hazmat {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantForHazardousSubstances_HAZMAT ;;
  }

  dimension: revision_level_has_been_assigned_to_the_material_kzrev {
    hidden: yes
    type: string
    sql: ${TABLE}.RevisionLevelHasBeenAssignedToTheMaterial_KZREV ;;
  }

  dimension: rollout_in_aseason_saity {
    hidden: yes
    type: string
    sql: ${TABLE}.RolloutInASeason_SAITY ;;
  }

  dimension: rounding_rule_for_calculation_of_sled_rdmhd {
    hidden: yes
    type: string
    sql: ${TABLE}.RoundingRuleForCalculationOfSled_RDMHD ;;
  }

  dimension: season_category_saiso {
    hidden: yes
    type: string
    sql: ${TABLE}.SeasonCategory_SAISO ;;
  }

  dimension: season_year_saisj {
    hidden: yes
    type: string
    sql: ${TABLE}.SeasonYear_SAISJ ;;
  }

  dimension: serial_number_profile_serial {
    hidden: yes
    type: string
    sql: ${TABLE}.SerialNumberProfile_SERIAL ;;
  }

  dimension: size_dimensions_groes {
    hidden: yes
    type: string
    sql: ${TABLE}.Sizedimensions_GROES ;;
  }

  dimension: source_of_supply_bwscl {
    hidden: yes
    type: string
    sql: ${TABLE}.SourceOfSupply_BWSCL ;;
  }

  dimension: stacking_factor_stfak {
    hidden: yes
    type: number
    sql: ${TABLE}.StackingFactor_STFAK ;;
  }

  dimension: standard_hu_type_hutyp_dflt {
    hidden: yes
    type: string
    sql: ${TABLE}.StandardHuType_HUTYP_DFLT ;;
  }

  dimension: stock_transfer_net_change_costing_aeklk {
    hidden: yes
    type: string
    sql: ${TABLE}.StockTransferNetChangeCosting_AEKLK ;;
  }

  dimension: storage_conditions_raube {
    hidden: yes
    type: string
    sql: ${TABLE}.StorageConditions_RAUBE ;;
  }

  dimension: storage_percentage_mhdlp {
    hidden: yes
    type: number
    sql: ${TABLE}.StoragePercentage_MHDLP ;;
  }

  dimension: tax_classification_of_the_material_taklv {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxClassificationOfTheMaterial_TAKLV ;;
  }

  dimension: temperature_conditions_indicator_tempb {
    hidden: yes
    type: string
    sql: ${TABLE}.TemperatureConditionsIndicator_TEMPB ;;
  }

  dimension: time_unit_for_quarantine_period_qqtimeuom {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeUnitForQuarantinePeriod_QQTIMEUOM ;;
  }

  dimension: total_shelf_life_mhdhb {
    hidden: yes
    type: number
    sql: ${TABLE}.TotalShelfLife_MHDHB ;;
  }

  dimension: transportation_group_tragr {
    hidden: yes
    type: string
    sql: ${TABLE}.TransportationGroup_TRAGR ;;
  }

  dimension: unit_of_dimension_for_length_width_height_meabm {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfDimensionForLengthwidthheight_MEABM ;;
  }

  dimension: unit_of_measure_for_maximum_packing_length_width_height_maxdim_uom {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfMeasureForMaximumPackingLengthwidthheight_MAXDIM_UOM ;;
  }

  dimension: unit_of_weight_allowed_packaging_weight_ergei {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitOfWeight__allowedPackagingWeight___ERGEI ;;
  }

  dimension: units_of_measure_usage_kzwsm {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitsOfMeasureUsage_KZWSM ;;
  }

  dimension_group: valid_from_date_datab {
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

  dimension: variable_purchase_order_unit_active_vabme {
    hidden: yes
    type: string
    sql: ${TABLE}.VariablePurchaseOrderUnitActive_VABME ;;
  }

  dimension: variable_tare_weight_tare_var {
    hidden: yes
    type: string
    sql: ${TABLE}.VariableTareWeight_TARE_VAR ;;
  }

  dimension: variant_price_allowed_for_material_master_allow_pmat_igno {
    hidden: yes
    type: string
    sql: ${TABLE}.VariantPriceAllowed__forMaterialMaster___ALLOW_PMAT_IGNO ;;
  }

  dimension: volume_unit_allowed_packaging_volume_ervoe {
    hidden: yes
    type: string
    sql: ${TABLE}.VolumeUnit__allowedPackagingVolume___ERVOE ;;
  }

  dimension: volume_unit_voleh {
    hidden: yes
    type: string
    sql: ${TABLE}.VolumeUnit_VOLEH ;;
  }

  dimension: volume_volum {
    hidden: yes
    type: number
    sql: ${TABLE}.Volume_VOLUM ;;
  }

  dimension: warehouse_material_group_whmatgr {
    hidden: yes
    type: string
    sql: ${TABLE}.WarehouseMaterialGroup_WHMATGR ;;
  }

  dimension: warehouse_storage_condition_whstc {
    hidden: yes
    type: string
    sql: ${TABLE}.WarehouseStorageCondition_WHSTC ;;
  }

  dimension: weight_unit_gewei {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightUnit_GEWEI ;;
  }

  dimension: width_breit {
    hidden: yes
    type: number
    sql: ${TABLE}.Width_BREIT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
