view: deliveries {
  sql_table_name: `SAP_REPORTING.Deliveries`
    ;;

  dimension: account_assignment_category_knttp {
    hidden: yes
    type: string
    sql: ${TABLE}.AccountAssignmentCategory_KNTTP ;;
  }

  dimension_group: actual_goods_movement_date_wadat_ist {
    # hidden: yes
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
    sql: ${TABLE}.ActualGoodsMovementDate_WADAT_IST ;;
  }

  dimension: actual_quantity_delivered_in_sales_units_lfimg {
    type: number
    sql: ${TABLE}.ActualQuantityDelivered__inSalesUnits___LFIMG ;;
  }

  dimension: actual_quantity_delivered_in_stockkeeping_units_lgmng {
    hidden: yes
    type: number
    sql: ${TABLE}.ActualQuantityDeliveredInStockkeepingUnits_LGMNG ;;
  }

  dimension: advanced_returns_management_active_msr_active {
    hidden: yes
    type: string
    sql: ${TABLE}.AdvancedReturnsManagementActive_MSR_ACTIVE ;;
  }

  dimension: akkreditiv_guid_loc_guid {
    hidden: yes
    type: string
    sql: ${TABLE}.Akkreditiv_guid_LOC_GUID ;;
  }

  dimension: allocation_indicator_vpzuo {
    hidden: yes
    type: string
    sql: ${TABLE}.AllocationIndicator_VPZUO ;;
  }

  dimension: allocation_table_number_abeln {
    hidden: yes
    type: string
    sql: ${TABLE}.AllocationTableNumber_ABELN ;;
  }

  dimension: alternate_product_number_spe_alternate {
    hidden: yes
    type: string
    sql: ${TABLE}.AlternateProductNumber_SPE_ALTERNATE ;;
  }

  dimension: a_reference_document_lfbnr {
    hidden: yes
    type: string
    sql: ${TABLE}.AReferenceDocument_LFBNR ;;
  }

  dimension: atp_time_stamp_spe_atp_tmstmp {
    hidden: yes
    type: number
    sql: ${TABLE}.AtpTimeStamp_SPE_ATP_TMSTMP ;;
  }

  dimension: automatic_to_creation_immediately_after_tr_generation_dirta {
    hidden: yes
    type: string
    sql: ${TABLE}.AutomaticToCreationImmediatelyAfterTrGeneration_DIRTA ;;
  }

  dimension: base_unit_of_measure_for_product_group_prbme {
    hidden: yes
    type: string
    sql: ${TABLE}.BaseUnitOfMeasureForProductGroup_PRBME ;;
  }

  dimension: base_unit_of_measure_meins {
    type: string
    sql: ${TABLE}.BaseUnitOfMeasure_MEINS ;;
  }

  dimension: batch_management_indicator_internal_xchar {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchManagementIndicator__internal___XCHAR ;;
  }

  dimension: batch_management_requirement_indicator_xchpf {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchManagementRequirementIndicator_XCHPF ;;
  }

  dimension: batch_number_charg {
    type: string
    sql: ${TABLE}.BatchNumber_CHARG ;;
  }

  dimension: batch_split_allowed_chspl {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchSplitAllowed_CHSPL ;;
  }

  dimension: batches_exit_to_quantity_proposal_chmvs {
    hidden: yes
    type: string
    sql: ${TABLE}.Batches_ExitToQuantityProposal_CHMVS ;;
  }

  dimension: begin_date_of_validity_period_of_returns_delivery_spe_bxp_date_ext {
    hidden: yes
    type: number
    sql: ${TABLE}.BeginDateOfValidityPeriodOfReturnsDelivery_SPE_BXP_DATE_EXT ;;
  }

  dimension_group: best_before_date_vfdat {
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
    sql: ${TABLE}.BestBeforeDate_VFDAT ;;
  }

  dimension: bill_of_lading_bolnr {
    hidden: yes
    type: string
    sql: ${TABLE}.BillOfLading_BOLNR ;;
  }

  dimension: billing_block_in_sd_document_faksk {
    hidden: yes
    type: string
    sql: ${TABLE}.BillingBlockInSdDocument_FAKSK ;;
  }

  dimension_group: billing_date_for_billing_index_and_printout_fkdat {
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
    sql: ${TABLE}.BillingDateForBillingIndexAndPrintout_FKDAT ;;
  }

  dimension_group: billing_date_for_intercompany_billing_fkdiv {
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
    sql: ${TABLE}.BillingDateForIntercompanyBilling_FKDIV ;;
  }

  dimension: billing_type_for_intercompany_billing_fkaiv {
    hidden: yes
    type: string
    sql: ${TABLE}.BillingTypeForIntercompanyBilling_FKAIV ;;
  }

  dimension: block_faksp {
    hidden: yes
    type: string
    sql: ${TABLE}.Block_FAKSP ;;
  }

  dimension: bom_explosion_number_sernr {
    hidden: yes
    type: string
    sql: ${TABLE}.BomExplosionNumber_SERNR ;;
  }

  dimension: business_area_gsber {
    type: string
    sql: ${TABLE}.BusinessArea_GSBER ;;
  }

  dimension: business_transaction_type_for_foreign_trade_exart {
    hidden: yes
    type: string
    sql: ${TABLE}.BusinessTransactionTypeForForeignTrade_EXART ;;
  }

  dimension: calculation_of_val_open_xwoff {
    hidden: yes
    type: string
    sql: ${TABLE}.CalculationOfValOpen_XWOFF ;;
  }

  dimension: cfop_code_and_extension_j_1_bcfop {
    hidden: yes
    type: string
    sql: ${TABLE}.CfopCodeAndExtension_J_1BCFOP ;;
  }

  dimension: change_indicator_for_the_carrier_spe_carrier_ind {
    hidden: yes
    type: string
    sql: ${TABLE}.ChangeIndicatorForTheCarrier_SPE_CARRIER_IND ;;
  }

  dimension: change_indicator_for_the_route_spe_georouteind {
    hidden: yes
    type: string
    sql: ${TABLE}.ChangeIndicatorForTheRoute_SPE_GEOROUTEIND ;;
  }

  dimension: characteristic_value1_wrf_charstc1 {
    hidden: yes
    type: string
    sql: ${TABLE}.CharacteristicValue1_WRF_CHARSTC1 ;;
  }

  dimension: characteristic_value2_wrf_charstc2 {
    hidden: yes
    type: string
    sql: ${TABLE}.CharacteristicValue2_WRF_CHARSTC2 ;;
  }

  dimension: characteristic_value3_wrf_charstc3 {
    hidden: yes
    type: string
    sql: ${TABLE}.CharacteristicValue3_WRF_CHARSTC3 ;;
  }

  dimension: checking_group_for_availability_mtvfp {
    hidden: yes
    type: string
    sql: ${TABLE}.CheckingGroupForAvailability_MTVFP ;;
  }

  dimension: client_mandt {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: cofins_tax_law_j_1_btaxlw4 {
    hidden: yes
    type: string
    sql: ${TABLE}.CofinsTaxLaw_J_1BTAXLW4 ;;
  }

  dimension: combination_criteria_for_delivery_zukrl {
    hidden: yes
    type: string
    sql: ${TABLE}.CombinationCriteriaForDelivery_ZUKRL ;;
  }

  dimension: commitment_item_fipos {
    hidden: yes
    type: string
    sql: ${TABLE}.CommitmentItem_FIPOS ;;
  }

  dimension: communication_number_for_qapi_interface_commn {
    hidden: yes
    type: string
    sql: ${TABLE}.CommunicationNumberForQApiInterface_COMMN ;;
  }

  dimension: company_id_vbund {
    type: string
    sql: ${TABLE}.CompanyId_VBUND ;;
  }

  dimension: complete_delivery_defined_for_each_sales_order_autlf {
    hidden: yes
    type: string
    sql: ${TABLE}.CompleteDeliveryDefinedForEachSalesOrder_AUTLF ;;
  }

  dimension: completion_of_goods_movements_after_difference_postings_spe_compl_mvt {
    hidden: yes
    type: string
    sql: ${TABLE}.CompletionOfGoodsMovementsAfterDifferencePostings_SPE_COMPL_MVT ;;
  }

  dimension: component_quantity_kmpmg {
    hidden: yes
    type: number
    sql: ${TABLE}.ComponentQuantity_KMPMG ;;
  }

  dimension: condition_pricing_unit_kpein {
    hidden: yes
    type: number
    sql: ${TABLE}.ConditionPricingUnit_KPEIN ;;
  }

  dimension: condition_unit_kmein {
    hidden: yes
    type: string
    sql: ${TABLE}.ConditionUnit_KMEIN ;;
  }

  dimension: configuration_cuobj {
    hidden: yes
    type: string
    sql: ${TABLE}.Configuration_CUOBJ ;;
  }

  dimension: confirmation_number_prtnr {
    type: string
    sql: ${TABLE}.ConfirmationNumber_PRTNR ;;
  }

  dimension_group: confirmation_time_potim {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ConfirmationTime_POTIM ;;
  }

  dimension: consumption_posting_kzvbr {
    hidden: yes
    type: string
    sql: ${TABLE}.ConsumptionPosting_KZVBR ;;
  }

  dimension: control_key_for_document_transfer_to_tm_tm_ctrl_key {
    hidden: yes
    type: string
    sql: ${TABLE}.ControlKeyForDocumentTransferToTm_TM_CTRL_KEY ;;
  }

  dimension: controlling_area_kokrs {
    hidden: yes
    type: string
    sql: ${TABLE}.ControllingArea_KOKRS ;;
  }

  dimension: conversion_factor_of_delivery_quantity_vrkme_for_meins_umrev {
    hidden: yes
    type: number
    sql: ${TABLE}.ConversionFactorOfDeliveryQuantityVrkmeForMeins_UMREV ;;
  }

  dimension: conversion_factor_quantities_umref {
    hidden: yes
    type: number
    sql: ${TABLE}.ConversionFactor_Quantities_UMREF ;;
  }

  dimension: correction_delivery_klief {
    hidden: yes
    type: string
    sql: ${TABLE}.CorrectionDelivery_KLIEF ;;
  }

  dimension: cost_center_kostl {
    type: string
    sql: ${TABLE}.CostCenter_KOSTL ;;
  }

  dimension: cost_in_document_currency_wavwr {
    hidden: yes
    type: number
    sql: ${TABLE}.CostInDocumentCurrency_WAVWR ;;
  }

  dimension_group: create_time_erzet {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreateTime_ERZET ;;
  }

  dimension: created_by_ernam {
    hidden: yes
    type: string
    sql: ${TABLE}.CreatedBy_ERNAM ;;
  }

  dimension: credit_control_area_kkber {
    hidden: yes
    type: string
    sql: ${TABLE}.CreditControlArea_KKBER ;;
  }

  dimension: credit_limit_reference_knkli {
    hidden: yes
    type: string
    sql: ${TABLE}.CreditLimitReference_KNKLI ;;
  }

  dimension: credit_management_risk_category_ctlpc {
    hidden: yes
    type: string
    sql: ${TABLE}.CreditManagement_RiskCategory_CTLPC ;;
  }

  dimension: credit_representative_group_for_credit_management_sbgrp {
    hidden: yes
    type: string
    sql: ${TABLE}.CreditRepresentativeGroupForCreditManagement_SBGRP ;;
  }

  dimension: cumulated_batch_split_quantity_in_vrkme_and_float_kcmengvmef {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulatedBatchSplitQuantityInVrkmeAndFloat_KCMENGVMEF ;;
  }

  dimension: cumulative_batch_quantity_of_all_split_items_in_stckunit_kcmeng {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeBatchQuantityOfAllSplitItems__inStckunit___KCMENG ;;
  }

  dimension: cumulative_batch_quantity_of_all_split_items_in_sales_units_kcmengvme {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeBatchQuantityOfAllSplitItemsInSalesUnits_KCMENGVME ;;
  }

  dimension: cumulative_gross_weight_of_all_batch_split_items_kcbrgew {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeGrossWeightOfAllBatchSplitItems_KCBRGEW ;;
  }

  dimension: cumulative_net_weight_of_all_batch_split_items_kcntgew {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeNetWeightOfAllBatchSplitItems_KCNTGEW ;;
  }

  dimension: cumulative_qty_for_schedagr_vendor_pov_spe_lieffz {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeQtyForSchedagrVendorPOV_SPE_LIEFFZ ;;
  }

  dimension: cumulative_volume_of_all_batch_split_items_kcvolum {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeVolumeOfAllBatchSplitItems_KCVOLUM ;;
  }

  dimension: currency_key_foreign_trade_akwae {
    hidden: yes
    type: string
    sql: ${TABLE}.CurrencyKeyForeignTrade_AKWAE ;;
  }

  dimension: currency_key_of_credit_control_area_cmwae {
    hidden: yes
    type: string
    sql: ${TABLE}.CurrencyKeyOfCreditControlArea_CMWAE ;;
  }

  dimension: current_qty_field_for_arithmetic_operations_akmng {
    hidden: yes
    type: string
    sql: ${TABLE}.CurrentQtyFieldForArithmeticOperations_AKMNG ;;
  }

  dimension: customer_credit_group_grupp {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerCreditGroup_GRUPP ;;
  }

  dimension: customer_engineering_change_status_aeskd {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerEngineeringChangeStatus_AESKD ;;
  }

  dimension: customer_factory_calendar_knfak {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerFactoryCalendar_KNFAK ;;
  }

  dimension: customer_group10_fsh_kvgr10 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup10_FSH_KVGR10 ;;
  }

  dimension: customer_group1_kvgr1 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup1_KVGR1 ;;
  }

  dimension: customer_group2_kvgr2 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup2_KVGR2 ;;
  }

  dimension: customer_group3_kvgr3 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup3_KVGR3 ;;
  }

  dimension: customer_group4_kvgr4 {
    type: string
    sql: ${TABLE}.CustomerGroup4_KVGR4 ;;
  }

  dimension: customer_group5_kvgr5 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup5_KVGR5 ;;
  }

  dimension: customer_group6_fsh_kvgr6 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup6_FSH_KVGR6 ;;
  }

  dimension: customer_group7_fsh_kvgr7 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup7_FSH_KVGR7 ;;
  }

  dimension: customer_group8_fsh_kvgr8 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup8_FSH_KVGR8 ;;
  }

  dimension: customer_group9_fsh_kvgr9 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup9_FSH_KVGR9 ;;
  }

  dimension: customer_group_kdgrp {
    type: string
    sql: ${TABLE}.CustomerGroup_KDGRP ;;
  }

  dimension: customer_has_not_posted_goods_receipt_nachl {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerHasNotPostedGoodsReceipt_NACHL ;;
  }

  dimension: customer_number_for_intercompany_billing_kuniv {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerNumberForIntercompanyBilling_KUNIV ;;
  }

  dimension: dangerous_goods_indicator_profile_profl {
    hidden: yes
    type: string
    sql: ${TABLE}.DangerousGoodsIndicatorProfile_PROFL ;;
  }

  dimension: dangerous_goods_management_profile_in_sd_documents_proli {
    hidden: yes
    type: string
    sql: ${TABLE}.DangerousGoodsManagementProfileInSdDocuments_PROLI ;;
  }

  dimension_group: date_proof_of_delivery_podat {
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
    sql: ${TABLE}.Date__proofOfDelivery___PODAT ;;
  }

  dimension_group: date_created_erdat {
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
    sql: ${TABLE}.DateCreated_ERDAT ;;
  }

  dimension: date_for_intercompany_billing_pioiv {
    hidden: yes
    type: string
    sql: ${TABLE}.DateForIntercompanyBilling_PIOIV ;;
  }

  dimension_group: date_of_last_change_aedat {
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
    sql: ${TABLE}.DateOfLastChange_AEDAT ;;
  }

  dimension_group: date_of_last_change_hdr_aedat {
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
    sql: ${TABLE}.DateOfLastChangeHdr_AEDAT ;;
  }

  dimension_group: date_of_manufacture_hsdat {
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
    sql: ${TABLE}.DateOfManufacture_HSDAT ;;
  }

  dimension_group: date_on_which_record_was_created_erdat {
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
    sql: ${TABLE}.DateOnWhichRecordWasCreated_ERDAT ;;
  }

  dimension: default_follow_spe_follow_up {
    hidden: yes
    type: string
    sql: ${TABLE}.DefaultFollow_SPE_FOLLOW_UP ;;
  }

  dimension: delivery_block_document_header_lifsk {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryBlock_documentHeader_LIFSK ;;
  }

  dimension: delivery_category_dlvtp {
    type: string
    sql: ${TABLE}.DeliveryCategory_DLVTP ;;
  }

  dimension: delivery_completed_spe_gen_elikz {
    hidden: yes
    type: string
    sql: ${TABLE}.deliveryCompleted_SPE_GEN_ELIKZ ;;
  }

  dimension: delivery_confirmation_status_spe_acc_app_sts {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryConfirmationStatus_SPE_ACC_APP_STS ;;
  }

  dimension_group: delivery_date_lfdat {
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
    sql: ${TABLE}.DeliveryDate_LFDAT ;;
  }

  dimension: delivery_delay {
    # hidden: yes
    type: number
    sql: ${TABLE}.delivery_delay ;;
  }

  dimension: delivery_group_items_are_delivered_together_grkor {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryGroup__itemsAreDeliveredTogether___GRKOR ;;
  }

  dimension: delivery_has_statusin_plant_imwrk {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryHasStatusinPlant_IMWRK ;;
  }

  dimension: delivery_item_category_pstyv {
    type: string
    sql: ${TABLE}.DeliveryItemCategory_PSTYV ;;
  }

  dimension: delivery_item_fsh_vas_prnt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryItem_FSH_VAS_PRNT_ID ;;
  }

  dimension: delivery_item_posnr {
    type: string
    sql: ${TABLE}.DeliveryItem_POSNR ;;
  }

  dimension: delivery_priority_lprio {
    type: string
    sql: ${TABLE}.DeliveryPriority_LPRIO ;;
  }

  dimension: delivery_split_initiator_dlv_split_initia {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliverySplitInitiator_DLV_SPLIT_INITIA ;;
  }

  dimension: delivery_type_folar {
    type: string
    sql: ${TABLE}.DeliveryType_FOLAR ;;
  }

  dimension: delivery_type_lfart {
    type: string
    sql: ${TABLE}.DeliveryType_LFART ;;
  }

  dimension: delivery_vbeln {
    type: string
    sql: ${TABLE}.Delivery_VBELN ;;
  }

  dimension: delivery_version_at_confirmation_spe_version {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryVersionAtConfirmation_SPE_VERSION ;;
  }

  dimension: delivery_version_dlv_version {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryVersion_DLV_VERSION ;;
  }

  dimension: delivery_within_one_warehouse_lispl {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryWithinOneWarehouse_LISPL ;;
  }

  dimension: denominator_divisor_for_conversion_of_sales_qty_into_sku_umvkn {
    hidden: yes
    type: number
    sql: ${TABLE}.Denominator__divisor__ForConversionOfSalesQtyIntoSku_UMVKN ;;
  }

  dimension: denominator_of_quotient_for_unit_of_measure_conversion_spe_apo_qntydiv {
    hidden: yes
    type: number
    sql: ${TABLE}.DenominatorOfQuotientForUnitOfMeasureConversion_SPE_APO_QNTYDIV ;;
  }

  dimension: department_number_abtnr {
    type: string
    sql: ${TABLE}.DepartmentNumber_ABTNR ;;
  }

  dimension: depreciation_percentage_for_financial_document_processing_akprz {
    hidden: yes
    type: number
    sql: ${TABLE}.DepreciationPercentageForFinancialDocumentProcessing_AKPRZ ;;
  }

  dimension: description_of_a_geographical_route_spe_georoute {
    hidden: yes
    type: string
    sql: ${TABLE}.DescriptionOfAGeographicalRoute_SPE_GEOROUTE ;;
  }

  dimension: description_of_print_profile_printer_profile {
    hidden: yes
    type: string
    sql: ${TABLE}.DescriptionOfPrintProfile_PRINTER_PROFILE ;;
  }

  dimension: dest_storage_data_from_preceding_document_flgwm {
    hidden: yes
    type: string
    sql: ${TABLE}.DestStorageDataFromPrecedingDocument_FLGWM ;;
  }

  dimension: determination_of_batch_entry_in_the_productionprocess_order_kzech {
    hidden: yes
    type: string
    sql: ${TABLE}.DeterminationOfBatchEntryInTheProductionprocessOrder_KZECH ;;
  }

  dimension: distribution_channel_for_intercompany_billing_vtwiv {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionChannelForIntercompanyBilling_VTWIV ;;
  }

  dimension: distribution_channel_vtweg {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionChannel_VTWEG ;;
  }

  dimension: distribution_delivery_original_item_verurpos {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionDelivery_OriginalItem_VERURPOS ;;
  }

  dimension: distribution_delivery_original_system_verursys {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionDelivery_OriginalSystem_VERURSYS ;;
  }

  dimension: distribution_delivery_verur {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionDelivery_VERUR ;;
  }

  dimension: distribution_status_decentralized_warehouse_processing_spe_rev_vlstk {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionStatus__decentralizedWarehouseProcessing_SPE_REV_VLSTK ;;
  }

  dimension: distribution_status_vlstk {
    type: string
    sql: ${TABLE}.DistributionStatus_VLSTK ;;
  }

  dimension: division_for_intercompany_billing_spaiv {
    hidden: yes
    type: string
    sql: ${TABLE}.DivisionForIntercompanyBilling_SPAIV ;;
  }

  dimension: division_spart {
    type: string
    sql: ${TABLE}.Division_SPART ;;
  }

  dimension_group: document_date_in_document_bldat {
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
    sql: ${TABLE}.DocumentDateInDocument_BLDAT ;;
  }

  dimension: document_deletion_indicator_spe_loekz {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentDeletionIndicator_SPE_LOEKZ ;;
  }

  dimension: door_for_warehouse_number_lgtor {
    hidden: yes
    type: string
    sql: ${TABLE}.DoorForWarehouseNumber_LGTOR ;;
  }

  dimension: end_date_of_internal_validity_period_of_returns_delivery_spe_exp_date_int {
    hidden: yes
    type: number
    sql: ${TABLE}.EndDateOfInternalValidityPeriodOfReturnsDelivery_SPE_EXP_DATE_INT ;;
  }

  dimension: end_date_of_validity_period_of_returns_delivery_spe_exp_date_ext {
    hidden: yes
    type: number
    sql: ${TABLE}.EndDateOfValidityPeriodOfReturnsDelivery_SPE_EXP_DATE_EXT ;;
  }

  dimension_group: entry_time_erzet {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EntryTime_ERZET ;;
  }

  dimension: environmentally_relevant_kzumw {
    hidden: yes
    type: string
    sql: ${TABLE}.EnvironmentallyRelevant_KZUMW ;;
  }

  dimension: event_group_time_segment_delivery_header_tsegtp {
    hidden: yes
    type: string
    sql: ${TABLE}.EventGroupTimeSegmentDeliveryHeader_TSEGTP ;;
  }

  dimension: ewm_billing_indicator_spe_billing_ind {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmBillingIndicator_SPE_BILLING_IND ;;
  }

  dimension: exception_code_warehouse_for_quantity_difference_spe_except_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ExceptionCodeWarehouseForQuantityDifference_SPE_EXCEPT_CODE ;;
  }

  dimension: exchange_rate_for_letter_credit_procg_in_foreign_trade_akkur {
    hidden: yes
    type: number
    sql: ${TABLE}.ExchangeRateForLetterCreditProcgInForeignTrade_AKKUR ;;
  }

  dimension: exchange_rate_for_letter_foreign_trade_akkur {
    hidden: yes
    type: number
    sql: ${TABLE}.ExchangeRateForLetterForeignTrade_AKKUR ;;
  }

  dimension: exchange_rate_for_statistics_stcur {
    hidden: yes
    type: number
    sql: ${TABLE}.ExchangeRateForStatistics_STCUR ;;
  }

  dimension: export_indicator_expkz {
    hidden: yes
    type: string
    sql: ${TABLE}.ExportIndicator_EXPKZ ;;
  }

  dimension: external_identification_of_delivery_note_lifex {
    hidden: yes
    type: string
    sql: ${TABLE}.ExternalIdentificationOfDeliveryNote_LIFEX ;;
  }

  dimension: external_item_identifier_spe_lifexpos2 {
    hidden: yes
    type: string
    sql: ${TABLE}.ExternalItemIdentifier_SPE_LIFEXPOS2 ;;
  }

  dimension: external_item_number_lifexpos {
    hidden: yes
    type: string
    sql: ${TABLE}.ExternalItemNumber_LIFEXPOS ;;
  }

  dimension: externally_entered_posting_amount_in_local_currency_exbwr {
    hidden: yes
    type: number
    sql: ${TABLE}.ExternallyEnteredPostingAmountInLocalCurrency_EXBWR ;;
  }

  dimension: externally_entered_sales_value_in_local_currency_exvkw {
    type: number
    sql: ${TABLE}.ExternallyEnteredSalesValueInLocalCurrency_EXVKW ;;
  }

  dimension: fashion_collection_fsh_collection {
    hidden: yes
    type: string
    sql: ${TABLE}.FashionCollection_FSH_COLLECTION ;;
  }

  dimension: fashion_theme_fsh_theme {
    hidden: yes
    type: string
    sql: ${TABLE}.FashionTheme_FSH_THEME ;;
  }

  dimension: final_issue_for_this_reservation_kzear {
    hidden: yes
    type: string
    sql: ${TABLE}.FinalIssueForThisReservation_KZEAR ;;
  }

  dimension: financial_doc_number_lcnum {
    hidden: yes
    type: string
    sql: ${TABLE}.FinancialDocNumber_LCNUM ;;
  }

  dimension: fiscal_year_of_current_period_lfgja {
    hidden: yes
    type: string
    sql: ${TABLE}.FiscalYearOfCurrentPeriod_LFGJA ;;
  }

  dimension: fixed_shipping_processing_time_in_days_vbeaf {
    hidden: yes
    type: number
    sql: ${TABLE}.FixedShippingProcessingTimeInDays_VBEAF ;;
  }

  dimension: fm_budget_period_budget_pd {
    hidden: yes
    type: string
    sql: ${TABLE}.Fm_BudgetPeriod_BUDGET_PD ;;
  }

  dimension: form_of_payment_guarantee_abfor {
    hidden: yes
    type: string
    sql: ${TABLE}.FormOfPaymentGuarantee_ABFOR ;;
  }

  dimension: functional_area_fkber {
    hidden: yes
    type: string
    sql: ${TABLE}.FunctionalArea_FKBER ;;
  }

  dimension: fund_geber {
    hidden: yes
    type: string
    sql: ${TABLE}.Fund_GEBER ;;
  }

  dimension: funds_center_fistl {
    hidden: yes
    type: string
    sql: ${TABLE}.FundsCenter_FISTL ;;
  }

  dimension: gl_account_number_konto {
    hidden: yes
    type: string
    sql: ${TABLE}.GlAccountNumber_KONTO ;;
  }

  dimension: goods_movement_control_gmcontrol {
    hidden: yes
    type: string
    sql: ${TABLE}.GoodsMovementControl_GMCONTROL ;;
  }

  dimension: goods_movement_control_hu_posting_change {
    hidden: yes
    type: string
    sql: ${TABLE}.GoodsMovementControl_Hu_POSTING_CHANGE ;;
  }

  dimension: goods_receiptissue_slip_number_xabln {
    hidden: yes
    type: string
    sql: ${TABLE}.GoodsReceiptissueSlipNumber_XABLN ;;
  }

  dimension: goods_traffic_type_spe_gts_rel {
    hidden: yes
    type: string
    sql: ${TABLE}.GoodsTrafficType_SPE_GTS_REL ;;
  }

  dimension: grant_grant_nbr {
    hidden: yes
    type: string
    sql: ${TABLE}.Grant_GRANT_NBR ;;
  }

  dimension: gross_weight_brgew {
    hidden: yes
    type: number
    sql: ${TABLE}.GrossWeight_BRGEW ;;
  }

  dimension: guaranteed_factor_between_0_and_1_abges {
    hidden: yes
    type: number
    sql: ${TABLE}.Guaranteed__factorBetween0And1___ABGES ;;
  }

  dimension_group: handover_date_at_the_handover_location_handoverdate {
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
    sql: ${TABLE}.HandoverDateAtTheHandoverLocation_HANDOVERDATE ;;
  }

  dimension: higher_level_item_in_bom_uepos {
    hidden: yes
    type: string
    sql: ${TABLE}.HigherLevelItemInBOM_UEPOS ;;
  }

  dimension: higher_level_item_of_batch_split_item_uecha {
    hidden: yes
    type: string
    sql: ${TABLE}.HigherLevelItemOfBatchSplitItem_UECHA ;;
  }

  dimension: higher_level_item_usage_uepvw {
    hidden: yes
    type: string
    sql: ${TABLE}.HigherLevelItemUsage_UEPVW ;;
  }

  dimension: id_for_external_transport_system_tpsid {
    hidden: yes
    type: string
    sql: ${TABLE}.IdForExternalTransportSystem_TPSID ;;
  }

  dimension: id_for_material_determination_prosa {
    hidden: yes
    type: string
    sql: ${TABLE}.IdForMaterialDetermination_PROSA ;;
  }

  dimension: id_item_with_active_credit_function_relevant_for_credit_cmpnt {
    hidden: yes
    type: string
    sql: ${TABLE}.Id_ItemWithActiveCreditFunctionRelevantForCredit_CMPNT ;;
  }

  dimension: id_leading_unit_of_measure_for_completing_a_transaction_kzfme {
    hidden: yes
    type: string
    sql: ${TABLE}.Id_LeadingUnitOfMeasureForCompletingATransaction_KZFME ;;
  }

  dimension: inbound_delivery_item_has_status_in_plant_spe_imwrk {
    hidden: yes
    type: string
    sql: ${TABLE}.InboundDeliveryItemHasStatusinPlant_SPE_IMWRK ;;
  }

  dimension: incoterms_part1_inco1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Incoterms__part1___INCO1 ;;
  }

  dimension: incoterms_part2_inco2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Incoterms__part2___INCO2 ;;
  }

  dimension: incoterms_location2_inco3_l {
    hidden: yes
    type: string
    sql: ${TABLE}.IncotermsLocation2_INCO3_L ;;
  }

  dimension: indicator_deactivate_availability_check_noatp {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DeactivateAvailabilityCheck_NOATP ;;
  }

  dimension: indicator_delivery_item_is_ahu_item_hupos {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DeliveryItemIsAHuItem_HUPOS ;;
  }

  dimension: indicator_document_contains_dangerous_goods_cont_dg {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DocumentContainsDangerousGoods_CONT_DG ;;
  }

  dimension: indicator_dynamic_storage_bin_in_warehouse_management_kzdlg {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DynamicStorageBinInWarehouseManagement_KZDLG ;;
  }

  dimension: indicator_for_controlling_goods_movement_kzwab {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForControllingGoodsMovement_KZWAB ;;
  }

  dimension: indicator_for_picking_control_komkz {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForPickingControl_KOMKZ ;;
  }

  dimension: indicator_for_situation_situa {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForSituation_SITUA ;;
  }

  dimension: indicator_inventory_management_active_kzbef {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorInventoryManagementActive_KZBEF ;;
  }

  dimension: indicator_item_not_relevant_for_goods_movements_nowab {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_ItemNotRelevantForGoodsMovements_NOWAB ;;
  }

  dimension: indicator_not_relevant_for_picking_nopck {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_NotRelevantForPicking_NOPCK ;;
  }

  dimension: indicator_separate_valuation_bwtex {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_SeparateValuation_BWTEX ;;
  }

  dimension: indicator_unlimited_overdelivery_allowed_uebtk {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_UnlimitedOverdeliveryAllowed_UEBTK ;;
  }

  dimension: indicator_unmat_in_main_posting_shkzg_um {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_UnmatInMainPosting_SHKZG_UM ;;
  }

  dimension: inspection_lot_number_qplos {
    hidden: yes
    type: string
    sql: ${TABLE}.InspectionLotNumber_QPLOS ;;
  }

  dimension: inspections_inspection_outcome_guid_set_by_ewm_spe_inspout_guid {
    hidden: yes
    type: string
    sql: ${TABLE}.Inspections_InspectionOutcomeGuidSetByEwm_SPE_INSPOUT_GUID ;;
  }

  dimension: internal_class_number_clint {
    hidden: yes
    type: string
    sql: ${TABLE}.InternalClassNumber_CLINT ;;
  }

  dimension: internal_delivery_schedule_number_abrli {
    hidden: yes
    type: string
    sql: ${TABLE}.InternalDeliveryScheduleNumber_ABRLI ;;
  }

  dimension: internal_field_do_not_use_kcmeng_in_float_mum_kcmeng_flo {
    hidden: yes
    type: number
    sql: ${TABLE}.InternalFieldDoNotUseKcmengInFloatMum_KCMENG_FLO ;;
  }

  dimension: internal_field_do_not_use_lfimg_in_float_mum_lfimg_flo {
    hidden: yes
    type: number
    sql: ${TABLE}.InternalFieldDoNotUseLfimgInFloatMum_LFIMG_FLO ;;
  }

  dimension: internal_field_do_not_use_lgmng_in_float_mum_lgmng_flo {
    hidden: yes
    type: number
    sql: ${TABLE}.InternalFieldDoNotUseLgmngInFloatMum_LGMNG_FLO ;;
  }

  dimension: internal_object_number_of_the_batch_classification_cuobj_ch {
    hidden: yes
    type: string
    sql: ${TABLE}.InternalObjectNumberOfTheBatchClassification_CUOBJ_CH ;;
  }

  dimension: international_article_number_eanupc_ean11 {
    hidden: yes
    type: string
    sql: ${TABLE}.InternationalArticleNumber__eanupc___EAN11 ;;
  }

  dimension: invoice_creation_before_goods_issue_spe_inv_bfr_gi {
    hidden: yes
    type: string
    sql: ${TABLE}.InvoiceCreationBeforeGoodsIssue_SPE_INV_BFR_GI ;;
  }

  dimension: invoice_dates_perfk {
    hidden: yes
    type: string
    sql: ${TABLE}.InvoiceDates_PERFK ;;
  }

  dimension: is_return {
    type: string
    sql: ${TABLE}.IS_RETURN ;;
  }

  dimension: iss_tax_law_j_1_btaxlw3 {
    hidden: yes
    type: string
    sql: ${TABLE}.IssTaxLaw_J_1BTAXLW3 ;;
  }

  dimension: item_credit_price_cmpre_flt {
    hidden: yes
    type: number
    sql: ${TABLE}.ItemCreditPrice_CMPRE_FLT ;;
  }

  dimension: item_group_fsh_item_group {
    type: string
    sql: ${TABLE}.ItemGroup_FSH_ITEM_GROUP ;;
  }

  dimension: item_number_fsh_item {
    type: string
    sql: ${TABLE}.ItemNumber_FSH_ITEM ;;
  }

  dimension: item_number_in_sales_order_kdpos {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemNumberInSalesOrder_KDPOS ;;
  }

  dimension: item_number_of_allocation_table_abelp {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemNumberOfAllocationTable_ABELP ;;
  }

  dimension: item_number_of_reservation_dependent_requirements_fsh_rspos {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemNumberOfReservationDependentRequirements_FSH_RSPOS ;;
  }

  dimension: item_number_of_reservation_dependent_requirements_rspos {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemNumberOfReservationDependentRequirements_RSPOS ;;
  }

  dimension: item_of_areference_document_lfpos {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemOfAReferenceDocument_LFPOS ;;
  }

  dimension: item_type_posar {
    type: string
    sql: ${TABLE}.ItemType_POSAR ;;
  }

  dimension: kanban_indicator_kbnkz {
    hidden: yes
    type: string
    sql: ${TABLE}.KanbanIndicator_KBNKZ ;;
  }

  dimension: kanbansequence_number_kannr {
    hidden: yes
    type: string
    sql: ${TABLE}.KanbansequenceNumber_KANNR ;;
  }

  dimension: last_changer_system_type_spe_chng_sys {
    hidden: yes
    type: string
    sql: ${TABLE}.LastChangerSystemType_SPE_CHNG_SYS ;;
  }

  dimension: last_vas_item_number_fsh_vas_last_item {
    hidden: yes
    type: string
    sql: ${TABLE}.LastVasItemNumber_FSH_VAS_LAST_ITEM ;;
  }

  dimension_group: loading_date_lddat {
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
    sql: ${TABLE}.LoadingDate_LDDAT ;;
  }

  dimension: loading_group_ladgr {
    type: string
    sql: ${TABLE}.LoadingGroup_LADGR ;;
  }

  dimension: loading_point_lstel {
    type: string
    sql: ${TABLE}.LoadingPoint_LSTEL ;;
  }

  dimension_group: loading_time_lduhr {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LoadingTime_LDUHR ;;
  }

  dimension: location_for_aphysical_handover_of_goods_handoverloc {
    type: string
    sql: ${TABLE}.LocationForAPhysicalHandoverOfGoods_HANDOVERLOC ;;
  }

  dimension: logical_system_in_the_preceding_document_vgsys {
    hidden: yes
    type: string
    sql: ${TABLE}.LogicalSystemInThePrecedingDocument_VGSYS ;;
  }

  dimension_group: material_availability_date_mbdat {
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
    sql: ${TABLE}.MaterialAvailabilityDate_MBDAT ;;
  }

  dimension: material_belonging_to_the_customer_kdmat {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialBelongingToTheCustomer_KDMAT ;;
  }

  dimension: material_entered_matwa {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialEntered_MATWA ;;
  }

  dimension: material_freight_group_mfrgr {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialFreightGroup_MFRGR ;;
  }

  dimension: material_group1_mvgr1 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup1_MVGR1 ;;
  }

  dimension: material_group2_mvgr2 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup2_MVGR2 ;;
  }

  dimension: material_group3_mvgr3 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup3_MVGR3 ;;
  }

  dimension: material_group4_mvgr4 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup4_MVGR4 ;;
  }

  dimension: material_group5_mvgr5 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup5_MVGR5 ;;
  }

  dimension: material_group_matkl {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup_MATKL ;;
  }

  dimension: material_group_packaging_materials_magrv {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup_PackagingMaterials_MAGRV ;;
  }

  dimension: material_number_corresponding_to_manufacturer_part_number_ematn {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialNumberCorrespondingToManufacturerPartNumber_EMATN ;;
  }

  dimension: material_number_matnr {
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
  }

  dimension: material_staging_indicator_for_production_supply_berkz {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialStagingIndicatorForProductionSupply_BERKZ ;;
  }

  dimension_group: material_staging_time_mbuhr {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.MaterialStagingTime_MBUHR ;;
  }

  dimension: material_type_mtart {
    type: string
    sql: ${TABLE}.MaterialType_MTART ;;
  }

  dimension: maximum_number_of_partial_deliveries_allowed_per_item_antlf {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumNumberOfPartialDeliveriesAllowedPerItem_ANTLF ;;
  }

  dimension: means_of_transport_id_traid {
    type: string
    sql: ${TABLE}.MeansOfTransportId_TRAID ;;
  }

  dimension: means_of_transport_spe_ttype {
    type: string
    sql: ${TABLE}.MeansOfTransport_SPE_TTYPE ;;
  }

  dimension: means_of_transport_trmtyp {
    type: string
    sql: ${TABLE}.MeansOfTransport_TRMTYP ;;
  }

  dimension: means_of_transport_type_traty {
    type: string
    sql: ${TABLE}.MeansOfTransportType_TRATY ;;
  }

  dimension: measurement_unit_system_spe_unit_system {
    hidden: yes
    type: string
    sql: ${TABLE}.MeasurementUnitSystem_SPE_UNIT_SYSTEM ;;
  }

  dimension: mfr_part_profile_mprof {
    hidden: yes
    type: string
    sql: ${TABLE}.MfrPartProfile_MPROF ;;
  }

  dimension: movement_indicator_kzbew {
    hidden: yes
    type: string
    sql: ${TABLE}.MovementIndicator_KZBEW ;;
  }

  dimension: movement_type_inventory_management_bwart {
    hidden: yes
    type: string
    sql: ${TABLE}.MovementType__inventoryManagement___BWART ;;
  }

  dimension: movement_type_for_warehouse_management_bwlvs {
    hidden: yes
    type: string
    sql: ${TABLE}.MovementTypeForWarehouseManagement_BWLVS ;;
  }

  dimension: mrp_area_berid {
    hidden: yes
    type: string
    sql: ${TABLE}.MrpArea_BERID ;;
  }

  dimension: multi_level_goods_receipt_automotive_borgr_grp {
    hidden: yes
    type: string
    sql: ${TABLE}.MultiLevelGoodsReceiptAutomotive_BORGR_GRP ;;
  }

  dimension: name_of_person_who_changed_object_hdr_aenam {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfPersonWhoChangedObjectHdr_AENAM ;;
  }

  dimension: name_of_person_who_created_the_object_ernam {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfPersonWhoCreatedTheObject_ERNAM ;;
  }

  dimension: net_price_netpr {
    hidden: yes
    type: number
    sql: ${TABLE}.NetPrice_NETPR ;;
  }

  dimension: net_value_in_document_currency_netwr {
    hidden: yes
    type: number
    sql: ${TABLE}.NetValueInDocumentCurrency_NETWR ;;
  }

  dimension: net_value_of_the_sales_order_in_document_currency_netwr {
    hidden: yes
    type: number
    sql: ${TABLE}.NetValueOfTheSalesOrderInDocumentCurrency_NETWR ;;
  }

  dimension: net_weight_hdr_ntgew {
    hidden: yes
    type: number
    sql: ${TABLE}.NetWeightHdr_NTGEW ;;
  }

  dimension: net_weight_ntgew {
    hidden: yes
    type: number
    sql: ${TABLE}.NetWeight_NTGEW ;;
  }

  dimension_group: next_date_cmngv {
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
    sql: ${TABLE}.NextDate_CMNGV ;;
  }

  dimension: non_preferential_origin_spe_herkl {
    hidden: yes
    type: string
    sql: ${TABLE}.NonPreferentialOrigin_SPE_HERKL ;;
  }

  dimension: not_relevant_for_distribution_for_wms_lfdez {
    hidden: yes
    type: string
    sql: ${TABLE}.NotRelevantForDistributionForWms_LFDEZ ;;
  }

  dimension: number_of_condition_record_from_batch_determination_knumh_ch {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfConditionRecordFromBatchDetermination_KNUMH_CH ;;
  }

  dimension: number_of_delivery_items_with_precedessor_in_other_system_vganz {
    hidden: yes
    type: number
    sql: ${TABLE}.NumberOfDeliveryItemsWithPrecedessorInOtherSystem_VGANZ ;;
  }

  dimension: number_of_document_condition_pricing_knump {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfDocumentConditionPricing_KNUMP ;;
  }

  dimension: number_of_foreign_trade_data_in_mm_and_sd_documents_exnum {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfForeignTradeDataInMmAndSdDocuments_EXNUM ;;
  }

  dimension: number_of_reservationdependent_requirements_fsh_rsnum {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfReservationdependentRequirements_FSH_RSNUM ;;
  }

  dimension: number_of_reservationdependent_requirements_rsnum {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfReservationdependentRequirements_RSNUM ;;
  }

  dimension: number_of_serial_numbers_anzsn {
    hidden: yes
    type: number
    sql: ${TABLE}.NumberOfSerialNumbers_ANZSN ;;
  }

  dimension: number_of_the_document_condition_knumv {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfTheDocumentCondition_KNUMV ;;
  }

  dimension: numerator_factor_for_conversion_of_sales_quantity_into_sku_umvkz {
    hidden: yes
    type: number
    sql: ${TABLE}.Numerator__factor__ForConversionOfSalesQuantityIntoSku_UMVKZ ;;
  }

  dimension: numerator_of_quotient_for_unit_of_measure_conversion_spe_apo_qntyfac {
    hidden: yes
    type: number
    sql: ${TABLE}.NumeratorOfQuotientForUnitOfMeasureConversion_SPE_APO_QNTYFAC ;;
  }

  dimension: object_number_at_header_level_objko {
    hidden: yes
    type: string
    sql: ${TABLE}.ObjectNumberAtHeaderLevel_OBJKO ;;
  }

  dimension: object_number_at_item_level_objpo {
    hidden: yes
    type: string
    sql: ${TABLE}.ObjectNumberAtItemLevel_OBJPO ;;
  }

  dimension: order_combination_indicator_kzazu {
    hidden: yes
    type: string
    sql: ${TABLE}.OrderCombinationIndicator_KZAZU ;;
  }

  dimension: order_item_number_posnr_pp {
    type: string
    sql: ${TABLE}.OrderItemNumber_POSNR_PP ;;
  }

  dimension: order_number_aufnr {
    type: string
    sql: ${TABLE}.OrderNumber_AUFNR ;;
  }

  dimension: order_number_ternr {
    type: string
    sql: ${TABLE}.OrderNumber_TERNR ;;
  }

  dimension: original_quantity_of_delivery_item_ormng {
    hidden: yes
    type: number
    sql: ${TABLE}.OriginalQuantityOfDeliveryItem_ORMNG ;;
  }

  dimension: original_system_type_itm_spe_orig_sys {
    hidden: yes
    type: string
    sql: ${TABLE}.OriginalSystemTypeItm_SPE_ORIG_SYS ;;
  }

  dimension: original_system_type_spe_orig_sys {
    hidden: yes
    type: string
    sql: ${TABLE}.OriginalSystemType_SPE_ORIG_SYS ;;
  }

  dimension: originating_document_vbelv {
    hidden: yes
    type: string
    sql: ${TABLE}.OriginatingDocument_VBELV ;;
  }

  dimension: originating_item_posnv {
    hidden: yes
    type: string
    sql: ${TABLE}.OriginatingItem_POSNV ;;
  }

  dimension: overdelivery_tolerance_limit_uebto {
    hidden: yes
    type: number
    sql: ${TABLE}.OverdeliveryToleranceLimit_UEBTO ;;
  }

  dimension: pack_accumulated_batches_movement_type_item_chhpv {
    hidden: yes
    type: string
    sql: ${TABLE}.PackAccumulatedBatchesMovementTypeItem_CHHPV ;;
  }

  dimension: packing_control_pckpf {
    hidden: yes
    type: string
    sql: ${TABLE}.PackingControl_PCKPF ;;
  }

  dimension: partial_delivery_at_item_level_kztlf {
    hidden: yes
    type: string
    sql: ${TABLE}.PartialDeliveryAtItemLevel_KZTLF ;;
  }

  dimension: partial_lot_number_qtlos {
    hidden: yes
    type: string
    sql: ${TABLE}.PartialLotNumber_QTLOS ;;
  }

  dimension: partner_identification_progressive_identification_number_spe_pro_number {
    hidden: yes
    type: string
    sql: ${TABLE}.PartnerIdentification_ProgressiveIdentificationNumber_SPE_PRO_NUMBER ;;
  }

  dimension: payment_guarantee_procedure_abssc {
    hidden: yes
    type: string
    sql: ${TABLE}.PaymentGuaranteeProcedure_ABSSC ;;
  }

  dimension: picked_items_location_berot {
    hidden: yes
    type: string
    sql: ${TABLE}.PickedItemsLocation_BEROT ;;
  }

  dimension_group: picking_date_kodat {
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
    sql: ${TABLE}.PickingDate_KODAT ;;
  }

  dimension: picking_is_subject_to_confirmation_koqui {
    hidden: yes
    type: string
    sql: ${TABLE}.PickingIsSubjectToConfirmation_KOQUI ;;
  }

  dimension_group: picking_time_kouhr {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PickingTime_KOUHR ;;
  }

  dimension: pis_tax_law_j_1_btaxlw5 {
    hidden: yes
    type: string
    sql: ${TABLE}.PisTaxLaw_J_1BTAXLW5 ;;
  }

  dimension_group: planned_goods_movement_date_wadat {
    # hidden: yes
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
    sql: ${TABLE}.PlannedGoodsMovementDate_WADAT ;;
  }

  dimension: planning_material_vpmat {
    hidden: yes
    type: string
    sql: ${TABLE}.PlanningMaterial_VPMAT ;;
  }

  dimension: planning_plant_vpwrk {
    hidden: yes
    type: string
    sql: ${TABLE}.PlanningPlant_VPWRK ;;
  }

  dimension: planning_type_plart {
    hidden: yes
    type: string
    sql: ${TABLE}.PlanningType_PLART ;;
  }

  dimension: plant_werks {
    hidden: yes
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: pod_control_proof_of_delivery_podrel {
    hidden: yes
    type: string
    sql: ${TABLE}.PodControl_proofOfDelivery___PODREL ;;
  }

  dimension: pod_indicator_kzpod {
    hidden: yes
    type: string
    sql: ${TABLE}.PodIndicator_KZPOD ;;
  }

  dimension: preceding_document_has_resulted_from_reference_vgref {
    hidden: yes
    type: string
    sql: ${TABLE}.PrecedingDocumentHasResultedFromReference_VGREF ;;
  }

  dimension: preference_indicator_in_export_import_prefe {
    hidden: yes
    type: string
    sql: ${TABLE}.PreferenceIndicatorInExportimport_PREFE ;;
  }

  dimension: pricing_procedure_kalsm {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingProcedure_KALSM ;;
  }

  dimension: product_hierarchy_prodh {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductHierarchy_PRODH ;;
  }

  dimension: production_supply_area_prvbe {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductionSupplyArea_PRVBE ;;
  }

  dimension: profit_center_prctr {
    hidden: yes
    type: string
    sql: ${TABLE}.ProfitCenter_PRCTR ;;
  }

  dimension: profitability_segment_number_paobjnr {
    hidden: yes
    type: string
    sql: ${TABLE}.ProfitabilitySegmentNumber_PAOBJNR ;;
  }

  dimension: project_definition_internal_pspnr {
    hidden: yes
    type: string
    sql: ${TABLE}.ProjectDefinition__internal___PSPNR ;;
  }

  dimension: promotion_aktnr {
    hidden: yes
    type: string
    sql: ${TABLE}.Promotion_AKTNR ;;
  }

  dimension: proposed_billing_type_for_a_delivery_related_billing_doc_fkarv {
    hidden: yes
    type: string
    sql: ${TABLE}.ProposedBillingTypeForADeliveryRelatedBillingDoc_FKARV ;;
  }

  dimension: purchase_order_for_consignment_cons_order {
    hidden: yes
    type: string
    sql: ${TABLE}.PurchaseOrderForConsignment_CONS_ORDER ;;
  }

  dimension: quantity_in_purchase_order_price_unit_bpmng {
    hidden: yes
    type: number
    sql: ${TABLE}.QuantityInPurchaseOrderPriceUnit_BPMNG ;;
  }

  dimension: quantity_is_fixed_fmeng {
    hidden: yes
    type: string
    sql: ${TABLE}.QuantityIsFixed_FMENG ;;
  }

  dimension: reason_for_goods_movment_grund {
    hidden: yes
    type: string
    sql: ${TABLE}.ReasonForGoodsMovment_GRUND ;;
  }

  dimension: reason_for_material_substitution_spe_mat_subst {
    hidden: yes
    type: string
    sql: ${TABLE}.ReasonForMaterialSubstitution_SPE_MAT_SUBST ;;
  }

  dimension: receiving_plant_for_deliveries_werks {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingPlantForDeliveries_WERKS ;;
  }

  dimension: receiving_plant_issuing_plant_umwrk {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingPlantissuingPlant_UMWRK ;;
  }

  dimension: receiving_point_empst {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingPoint_EMPST ;;
  }

  dimension: receiving_issuing_batch_umcha {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingissuingBatch_UMCHA ;;
  }

  dimension: receiving_issuing_material_ummat {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingissuingMaterial_UMMAT ;;
  }

  dimension: receiving_issuing_storage_location_umlgo {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingissuingStorageLocation_UMLGO ;;
  }

  dimension: receiving_issuing_wbs_element_um_ps_psp_pnr {
    hidden: yes
    type: string
    sql: ${TABLE}.Receivingissuing_wbsElement_UM_PS_PSP_PNR ;;
  }

  dimension: record_type_rsart {
    type: string
    sql: ${TABLE}.RecordType_RSART ;;
  }

  dimension: reference_document_number_xblnr {
    type: string
    sql: ${TABLE}.ReferenceDocumentNumber_XBLNR ;;
  }

  dimension: reference_movement_type_for_wm_from_material_movements_rblvs {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceMovementTypeForWmFromMaterialMovements_RBLVS ;;
  }

  dimension: rel_type_abart {
    hidden: yes
    type: string
    sql: ${TABLE}.RelType_ABART ;;
  }

  dimension_group: release_date_of_the_document_determined_by_credit_management_cmfre {
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
    sql: ${TABLE}.ReleaseDateOfTheDocumentDeterminedByCreditManagement_CMFRE ;;
  }

  dimension: release_time_stamp_spe_rel_tmstmp {
    hidden: yes
    type: number
    sql: ${TABLE}.ReleaseTimeStamp_SPE_REL_TMSTMP ;;
  }

  dimension: released_credit_value_of_the_document_amtbl {
    hidden: yes
    type: number
    sql: ${TABLE}.ReleasedCreditValueOfTheDocument_AMTBL ;;
  }

  dimension: relevant_for_billing_fkrel {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantForBilling_FKREL ;;
  }

  dimension: relevant_to_allocation_table_aurel {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantToAllocationTable_AUREL ;;
  }

  dimension: repair_processing_classification_of_items_vkgru {
    hidden: yes
    type: string
    sql: ${TABLE}.RepairProcessing_ClassificationOfItems_VKGRU ;;
  }

  dimension: requirement_segment_sgt_rcat {
    hidden: yes
    type: string
    sql: ${TABLE}.RequirementSegment_SGT_RCAT ;;
  }

  dimension: requirement_type_bdart {
    hidden: yes
    type: string
    sql: ${TABLE}.RequirementType_BDART ;;
  }

  dimension: requirements_class_bedar_lf {
    hidden: yes
    type: string
    sql: ${TABLE}.RequirementsClass_BEDAR_LF ;;
  }

  dimension: retention_quantity_for_scrap_spe_keep_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.RetentionQuantityForScrap_SPE_KEEP_QTY ;;
  }

  dimension: return_material_authorization_number_spe_auth_number {
    hidden: yes
    type: string
    sql: ${TABLE}.ReturnMaterialAuthorizationNumber_SPE_AUTH_NUMBER ;;
  }

  dimension: returns_flag_showing_that_an_asn_is_cancelled_spe_ret_canc {
    hidden: yes
    type: string
    sql: ${TABLE}.Returns_FlagShowingThatAnAsnIsCancelled_SPE_RET_CANC ;;
  }

  dimension: returns_item_shkzg {
    hidden: yes
    type: string
    sql: ${TABLE}.ReturnsItem_SHKZG ;;
  }

  dimension: revenue_accounting_type_farr_reltype {
    hidden: yes
    type: string
    sql: ${TABLE}.RevenueAccountingType_FARR_RELTYPE ;;
  }

  dimension: rma_completion_indicator_spe_auth_complet {
    hidden: yes
    type: string
    sql: ${TABLE}.RmaCompletionIndicator_SPE_AUTH_COMPLET ;;
  }

  dimension: route_code_for_sap_global_trade_services_spe_gts_rt_cde {
    hidden: yes
    type: string
    sql: ${TABLE}.RouteCodeForSapGlobalTradeServices_SPE_GTS_RT_CDE ;;
  }

  dimension: route_routa {
    hidden: yes
    type: string
    sql: ${TABLE}.Route_ROUTA ;;
  }

  dimension: route_route {
    hidden: yes
    type: string
    sql: ${TABLE}.Route_ROUTE ;;
  }

  dimension: route_schedule_aulwe {
    hidden: yes
    type: string
    sql: ${TABLE}.RouteSchedule_AULWE ;;
  }

  dimension: sales_district_bzirk {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesDistrict_BZIRK ;;
  }

  dimension: sales_group_vkgrp {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesGroup_VKGRP ;;
  }

  dimension: sales_office_hdr_vkbur {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOfficeHdr_VKBUR ;;
  }

  dimension: sales_office_vkbur {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOffice_VKBUR ;;
  }

  dimension: sales_order_item_vgpos {
    type: string
    sql: ${TABLE}.SalesOrderItem_VGPOS ;;
  }

  dimension: sales_order_number_kdauf {
    type: string
    sql: ${TABLE}.SalesOrderNumber_KDAUF ;;
  }

  dimension: sales_order_number_vgbel {
    type: string
    sql: ${TABLE}.SalesOrderNumber_VGBEL ;;
  }

  dimension: sales_organization_for_intercompany_billing_vkoiv {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrganizationForIntercompanyBilling_VKOIV ;;
  }

  dimension: sales_organization_vkorg {
    type: string
    sql: ${TABLE}.SalesOrganization_VKORG ;;
  }

  dimension: sales_unit_vrkme {
    type: string
    sql: ${TABLE}.SalesUnit_VRKME ;;
  }

  dimension: sap_global_trade_services_storage_status_of_delivery_sakes {
    hidden: yes
    type: string
    sql: ${TABLE}.SapGlobalTradeServices_StorageStatusOfDelivery_SAKES ;;
  }

  dimension: scenario_logistic_execution_spe_le_scenario {
    hidden: yes
    type: string
    sql: ${TABLE}.ScenarioLogisticExecution_SPE_LE_SCENARIO ;;
  }

  dimension: scrap_indicator_for_ewm_processing_spe_scrap_ind {
    hidden: yes
    type: string
    sql: ${TABLE}.ScrapIndicatorForEwmProcessing_SPE_SCRAP_IND ;;
  }

  dimension: sd_document_category_vbtyp {
    hidden: yes
    type: string
    sql: ${TABLE}.SdDocumentCategory_VBTYP ;;
  }

  dimension: sd_document_category_vbtyv {
    hidden: yes
    type: string
    sql: ${TABLE}.SdDocumentCategory_VBTYV ;;
  }

  dimension: sd_document_category_vgtyp {
    hidden: yes
    type: string
    sql: ${TABLE}.SdDocumentCategory_VGTYP ;;
  }

  dimension: sd_document_currency_waerk {
    hidden: yes
    type: string
    sql: ${TABLE}.SdDocumentCurrency_WAERK ;;
  }

  dimension: sd_tax_code_j_1_btxsdc {
    hidden: yes
    type: string
    sql: ${TABLE}.SdTaxCode_J_1BTXSDC ;;
  }

  dimension: search_procedure_for_batch_determination_kalsm_ch {
    hidden: yes
    type: string
    sql: ${TABLE}.SearchProcedureForBatchDetermination_KALSM_CH ;;
  }

  dimension: season_fsh_season {
    hidden: yes
    type: string
    sql: ${TABLE}.Season_FSH_SEASON ;;
  }

  dimension: season_year_fsh_season_year {
    hidden: yes
    type: string
    sql: ${TABLE}.SeasonYear_FSH_SEASON_YEAR ;;
  }

  dimension: sequence_of_intermediate_locations_in_returns_process_spe_loc_seq {
    hidden: yes
    type: string
    sql: ${TABLE}.SequenceOfIntermediateLocationsInReturnsProcess_SPE_LOC_SEQ ;;
  }

  dimension: sequential_number_of_vendor_confirmation_pre_vl_etens {
    hidden: yes
    type: string
    sql: ${TABLE}.SequentialNumberOfVendorConfirmation_PRE_VL_ETENS ;;
  }

  dimension: serial_number_profile_serail {
    hidden: yes
    type: string
    sql: ${TABLE}.SerialNumberProfile_SERAIL ;;
  }

  dimension: ship_to_party_kunnr {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipToParty_KUNNR ;;
  }

  dimension: shipment_blocking_reason_trspg {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipmentBlockingReason_TRSPG ;;
  }

  dimension: shipment_information_status_spe_shp_inf_sts {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipmentInformationStatus_SPE_SHP_INF_STS ;;
  }

  dimension: shipping_conditions_vsbed {
    hidden: yes
    type: string
    sql: ${TABLE}.ShippingConditions_VSBED ;;
  }

  dimension: shipping_pointreceiving_point_vstel {
    hidden: yes
    type: string
    sql: ${TABLE}.ShippingPointreceivingPoint_VSTEL ;;
  }

  dimension: shipping_pricing_procedure_kalsp {
    hidden: yes
    type: string
    sql: ${TABLE}.Shipping_PricingProcedure_KALSP ;;
  }

  dimension: shipping_processing_time_for_the_entire_document_vbeak {
    hidden: yes
    type: number
    sql: ${TABLE}.ShippingProcessingTimeForTheEntireDocument_VBEAK ;;
  }

  dimension: shipping_type_vsart {
    hidden: yes
    type: string
    sql: ${TABLE}.ShippingType_VSART ;;
  }

  dimension: short_text_for_sales_order_item_arktx {
    hidden: yes
    type: string
    sql: ${TABLE}.ShortTextForSalesOrderItem_ARKTX ;;
  }

  dimension: sold_to_party_kunag {
    hidden: yes
    type: string
    sql: ${TABLE}.SoldToParty_KUNAG ;;
  }

  dimension: spe_indicator_if_redirecting_has_occured_spe_red_ind {
    hidden: yes
    type: string
    sql: ${TABLE}.SpeIndicatorIfRedirectingHasOccured_SPE_RED_IND ;;
  }

  dimension: special_processing_indicator_sdabw {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecialProcessingIndicator_SDABW ;;
  }

  dimension: special_stock_indicator_for_physical_stock_transfer_umsok {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecialStockIndicatorForPhysicalStockTransfer_UMSOK ;;
  }

  dimension: special_stock_indicator_sobkz {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecialStockIndicator_SOBKZ ;;
  }

  dimension: special_stock_number_sonum {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecialStockNumber_SONUM ;;
  }

  dimension: special_stock_number_usonu {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecialStockNumber_USONU ;;
  }

  dimension: specification_for_issuing_valuated_stock_in_transit_sitkz {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecificationForIssuingValuatedStockInTransit_SITKZ ;;
  }

  dimension: split_to_warehouse_number_required_lispl {
    hidden: yes
    type: string
    sql: ${TABLE}.SplitToWarehouseNumberRequired_LISPL ;;
  }

  dimension: staging_area_for_warehouse_complex_hdr_lgbzo {
    hidden: yes
    type: string
    sql: ${TABLE}.StagingAreaForWarehouseComplexHdr_LGBZO ;;
  }

  dimension: staging_area_for_warehouse_complex_lgbzo {
    hidden: yes
    type: string
    sql: ${TABLE}.StagingAreaForWarehouseComplex_LGBZO ;;
  }

  dimension: statistical_values_kowrr {
    hidden: yes
    type: string
    sql: ${TABLE}.StatisticalValues_KOWRR ;;
  }

  dimension: statistics_currency_stwae {
    hidden: yes
    type: string
    sql: ${TABLE}.StatisticsCurrency_STWAE ;;
  }

  dimension_group: statistics_date_stadat {
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
    sql: ${TABLE}.StatisticsDate_STADAT ;;
  }

  dimension: status_of_quality_inspection_for_returns_deliveries_spe_qi_status {
    hidden: yes
    type: string
    sql: ${TABLE}.StatusOfQualityInspectionForReturnsDeliveries_SPE_QI_STATUS ;;
  }

  dimension: stock_category_in_the_warehouse_management_system_bestq {
    hidden: yes
    type: string
    sql: ${TABLE}.StockCategoryInTheWarehouseManagementSystem_BESTQ ;;
  }

  dimension: stock_category_in_the_warehouse_management_system_umbsq {
    hidden: yes
    type: string
    sql: ${TABLE}.StockCategoryInTheWarehouseManagementSystem_UMBSQ ;;
  }

  dimension: stock_determination_rule_rules {
    hidden: yes
    type: string
    sql: ${TABLE}.StockDeterminationRule_RULES ;;
  }

  dimension: stock_segment_sgt_scat {
    hidden: yes
    type: string
    sql: ${TABLE}.StockSegment_SGT_SCAT ;;
  }

  dimension: stock_transfertransfer_posting_kzuml {
    hidden: yes
    type: string
    sql: ${TABLE}.StockTransfertransferPosting_KZUML ;;
  }

  dimension: stock_type_insmk {
    hidden: yes
    type: string
    sql: ${TABLE}.StockType_INSMK ;;
  }

  dimension: storage_bin_lgpbe {
    hidden: yes
    type: string
    sql: ${TABLE}.StorageBin_LGPBE ;;
  }

  dimension: storage_bin_lgpla {
    hidden: yes
    type: string
    sql: ${TABLE}.StorageBin_LGPLA ;;
  }

  dimension: storage_location_lgort {
    hidden: yes
    type: string
    sql: ${TABLE}.StorageLocation_LGORT ;;
  }

  dimension: storage_type_lgtyp {
    hidden: yes
    type: string
    sql: ${TABLE}.StorageType_LGTYP ;;
  }

  dimension: structure_of_items_that_are_delivered_together_spe_struc {
    hidden: yes
    type: string
    sql: ${TABLE}.StructureOfItemsThatAreDeliveredTogether_SPE_STRUC ;;
  }

  dimension: subsequent_movement_type_fobwa {
    hidden: yes
    type: string
    sql: ${TABLE}.SubsequentMovementType_FOBWA ;;
  }

  dimension: subtotal1_from_pricing_procedure_for_condition_kzwi1 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal1FromPricingProcedureForCondition_KZWI1 ;;
  }

  dimension: subtotal2_from_pricing_procedure_for_condition_kzwi2 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal2FromPricingProcedureForCondition_KZWI2 ;;
  }

  dimension: subtotal3_from_pricing_procedure_for_condition_kzwi3 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal3FromPricingProcedureForCondition_KZWI3 ;;
  }

  dimension: subtotal4_from_pricing_procedure_for_condition_kzwi4 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal4FromPricingProcedureForCondition_KZWI4 ;;
  }

  dimension: subtotal5_from_pricing_procedure_for_condition_kzwi5 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal5FromPricingProcedureForCondition_KZWI5 ;;
  }

  dimension: subtotal6_from_pricing_procedure_for_condition_kzwi6 {
    type: number
    hidden: yes
    sql: ${TABLE}.Subtotal6FromPricingProcedureForCondition_KZWI6 ;;
  }

  dimension: summing_up_of_requirements_sumbd {
    hidden: yes
    type: string
    sql: ${TABLE}.SummingUpOfRequirements_SUMBD ;;
  }

  dimension: tax_law_icms_j_1_btaxlw1 {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxLaw_Icms_J_1BTAXLW1 ;;
  }

  dimension: tax_law_ipi_j_1_btaxlw2 {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxLaw_Ipi_J_1BTAXLW2 ;;
  }

  dimension: temporary_change_of_storage_locations_in_delivery_stge_loc_change {
    hidden: yes
    type: string
    sql: ${TABLE}.TemporaryChangeOfStorageLocationsInDelivery_STGE_LOC_CHANGE ;;
  }

  dimension_group: time_of_delivery_lfuhr {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TimeOfDelivery_LFUHR ;;
  }

  dimension_group: time_of_goods_issue_local {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TimeOfGoodsIssue__local ;;
  }

  dimension_group: time_of_goods_issue_wauhr {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TimeOfGoodsIssue_WAUHR ;;
  }

  dimension: time_segment_exists_tsegfl {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeSegmentExists_TSEGFL ;;
  }

  dimension: time_zone_of_delivering_location_tzonis {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeZoneOfDeliveringLocation_TZONIS ;;
  }

  dimension: time_zone_of_recipient_location_tzonrc {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeZoneOfRecipientLocation_TZONRC ;;
  }

  dimension: time_zone_spe_wazone_ist {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeZone_SPE_WAZONE_IST ;;
  }

  dimension: total_number_of_packages_in_delivery_anzpk {
    hidden: yes
    type: string
    sql: ${TABLE}.TotalNumberOfPackagesInDelivery_ANZPK ;;
  }

  dimension: total_weight_btgew {
    hidden: yes
    type: number
    sql: ${TABLE}.TotalWeight_BTGEW ;;
  }

  dimension: transaction_code_tcode {
    type: string
    sql: ${TABLE}.TransactionCode_TCODE ;;
  }

  dimension: transaction_number_fsh_transaction {
    type: string
    sql: ${TABLE}.TransactionNumber_FSH_TRANSACTION ;;
  }

  dimension: transaction_number_hdr_fsh_transaction {
    type: string
    sql: ${TABLE}.TransactionNumberHdr_FSH_TRANSACTION ;;
  }

  dimension_group: transp_planning_time_tduhr {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TranspPlanningTime_TDUHR ;;
  }

  dimension: transportation_group_hdr_tragr {
    type: string
    sql: ${TABLE}.TransportationGroupHdr_TRAGR ;;
  }

  dimension: transportation_group_tragr {
    type: string
    sql: ${TABLE}.TransportationGroup_TRAGR ;;
  }

  dimension_group: transportation_planning_date_tddat {
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
    sql: ${TABLE}.TransportationPlanningDate_TDDAT ;;
  }

  dimension: type_of_external_identification_spe_lifex_type {
    hidden: yes
    type: string
    sql: ${TABLE}.TypeOfExternalIdentification_SPE_LIFEX_TYPE ;;
  }

  dimension: type_of_preceding_document_in_central_system_rfvgtyp {
    hidden: yes
    type: string
    sql: ${TABLE}.TypeOfPrecedingDocumentInCentralSystem_RFVGTYP ;;
  }

  dimension: underdelivery_tolerance_limit_untto {
    hidden: yes
    type: number
    sql: ${TABLE}.UnderdeliveryToleranceLimit_UNTTO ;;
  }

  dimension: units_of_measure_usage_kzwso {
    type: string
    sql: ${TABLE}.UnitsOfMeasureUsage_KZWSO ;;
  }

  dimension: unloading_point_ablad {
    hidden: yes
    type: string
    sql: ${TABLE}.UnloadingPoint_ABLAD ;;
  }

  dimension: update_group_for_statistics_hdr_stafo {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateGroupForStatisticsHdr_STAFO ;;
  }

  dimension: update_group_for_statistics_update_stafo {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateGroupForStatisticsUpdate_STAFO ;;
  }

  dimension: update_indicator_for_delivery_document_flow_upflu {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateIndicatorForDeliveryDocumentFlow_UPFLU ;;
  }

  dimension: usage_indicator_abrvw {
    hidden: yes
    type: string
    sql: ${TABLE}.UsageIndicator_ABRVW ;;
  }

  dimension: valuation_of_special_stock_kzbws {
    hidden: yes
    type: string
    sql: ${TABLE}.ValuationOfSpecialStock_KZBWS ;;
  }

  dimension: valuation_type_bwtar {
    hidden: yes
    type: string
    sql: ${TABLE}.ValuationType_BWTAR ;;
  }

  dimension: valuation_type_of_transfer_batch_umbar {
    hidden: yes
    type: string
    sql: ${TABLE}.ValuationTypeOfTransferBatch_UMBAR ;;
  }

  dimension: value_added_services_customer_group_fsh_vas_cg {
    hidden: yes
    type: string
    sql: ${TABLE}.ValueAddedServicesCustomerGroup_FSH_VAS_CG ;;
  }

  dimension: value_contract_item_wktps {
    hidden: yes
    type: string
    sql: ${TABLE}.ValueContractItem_WKTPS ;;
  }

  dimension: value_contract_no_wktnr {
    hidden: yes
    type: string
    sql: ${TABLE}.ValueContractNo_WKTNR ;;
  }

  dimension: variable_shipping_processing_time_in_days_vbeav {
    hidden: yes
    type: number
    sql: ${TABLE}.VariableShippingProcessingTimeInDays_VBEAV ;;
  }

  dimension: vas_relevant_fsh_vas_rel {
    hidden: yes
    type: string
    sql: ${TABLE}.VasRelevant_FSH_VAS_REL ;;
  }

  dimension: vendor_batch_number_lichn {
    hidden: yes
    type: string
    sql: ${TABLE}.VendorBatchNumber_LICHN ;;
  }

  dimension: vendors_account_number_lifnr {
    hidden: yes
    type: string
    sql: ${TABLE}.VendorsAccountNumber_LIFNR ;;
  }

  dimension: volume_hdr_volum {
    hidden: yes
    type: number
    sql: ${TABLE}.VolumeHdr_VOLUM ;;
  }

  dimension: volume_unit_hdr_voleh {
    type: string
    sql: ${TABLE}.VolumeUnitHdr_VOLEH ;;
  }

  dimension: volume_unit_kcvoleh {
    type: string
    sql: ${TABLE}.VolumeUnit_KCVOLEH ;;
  }

  dimension: volume_unit_voleh {
    type: string
    sql: ${TABLE}.VolumeUnit_VOLEH ;;
  }

  dimension: volume_volum {
    type: number
    sql: ${TABLE}.Volume_VOLUM ;;
  }

  dimension: warehouse_number_lgnum {
    hidden: yes
    type: string
    sql: ${TABLE}.WarehouseNumber_LGNUM ;;
  }

  dimension: warehouse_number_warehouse_complex_lgnum {
    hidden: yes
    type: string
    sql: ${TABLE}.WarehouseNumberWarehouseComplex_LGNUM ;;
  }

  dimension: weight_group_for_delivery_grulg {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightGroupForDelivery__GRULG ;;
  }

  dimension: weight_unit_gewei {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightUnit_GEWEI ;;
  }

  dimension: weight_unit_hdr_gewei {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightUnitHdr_GEWEI ;;
  }

  dimension: weight_unit_kcgewei {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightUnit_KCGEWEI ;;
  }

  dimension: withdrawal_sequence_group_for_stocks_eprio {
    hidden: yes
    type: string
    sql: ${TABLE}.WithdrawalSequenceGroupForStocks_EPRIO ;;
  }

  dimension: work_breakdown_structure_element_wbs_element_ps_psp_pnr {
    hidden: yes
    type: string
    sql: ${TABLE}.WorkBreakdownStructureElement__wbsElement___PS_PSP_PNR ;;
  }

  dimension: worldwide_unique_key_for_likp_vbeln_handle {
    hidden: yes
    type: string
    sql: ${TABLE}.WorldwideUniqueKeyForLikpVbeln_HANDLE ;;
  }

  dimension: worldwide_unique_key_for_lips_handle {
    hidden: yes
    type: string
    sql: ${TABLE}.WorldwideUniqueKeyForLips_HANDLE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
