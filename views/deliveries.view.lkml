view: deliveries {
  sql_table_name: `@{DATASET}.Deliveries`
    ;;

  dimension: deliveries_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${client}," - ", ${delivery}, " - ", ${delivery_item}) ;;
  }

  dimension: account_assignment_category {
    hidden: yes
    type: string
    sql: ${TABLE}.AccountAssignmentCategory_KNTTP ;;
  }

  dimension_group: actual_goods_movement {
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

  dimension: actual_quantity_delivered_in_sales_units{
    hidden: yes
    type: number
    sql: ${TABLE}.ActualQuantityDelivered__inSalesUnits___LFIMG ;;
  }

  dimension: actual_quantity_delivered_in_stockkeeping_units {
    hidden: yes
    type: number
    sql: ${TABLE}.ActualQuantityDeliveredInStockkeepingUnits_LGMNG ;;
  }

  dimension: advanced_returns_management_active {
    hidden: yes
    type: string
    sql: ${TABLE}.AdvancedReturnsManagementActive_MSR_ACTIVE ;;
  }

  dimension: akkreditiv_guid {
    hidden: yes
    type: string
    sql: ${TABLE}.Akkreditiv_guid_LOC_GUID ;;
  }

  dimension: allocation_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.AllocationIndicator_VPZUO ;;
  }

  dimension: allocation_table_number {
    hidden: yes
    type: string
    sql: ${TABLE}.AllocationTableNumber_ABELN ;;
  }

  dimension: alternate_product_number {
    hidden: yes
    type: string
    sql: ${TABLE}.AlternateProductNumber_SPE_ALTERNATE ;;
  }

  dimension: a_reference_document {
    hidden: yes
    type: string
    sql: ${TABLE}.AReferenceDocument_LFBNR ;;
  }

  dimension: atp_time_stamp {
    hidden: yes
    type: number
    sql: ${TABLE}.AtpTimeStamp_SPE_ATP_TMSTMP ;;
  }

  dimension: automatic_to_creation_immediately_after_tr_generation {
    hidden: yes
    type: string
    sql: ${TABLE}.AutomaticToCreationImmediatelyAfterTrGeneration_DIRTA ;;
  }

  dimension: base_unit_of_measure_for_product_group {
    hidden: yes
    type: string
    sql: ${TABLE}.BaseUnitOfMeasureForProductGroup_PRBME ;;
  }

  dimension: base_unit_of_measure {
    hidden: yes
    type: string
    sql: ${TABLE}.BaseUnitOfMeasure_MEINS ;;
  }

  dimension: batch_management_indicator_internal {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchManagementIndicator__internal___XCHAR ;;
  }

  dimension: batch_management_requirement_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchManagementRequirementIndicator_XCHPF ;;
  }

  dimension: batch_number {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchNumber_CHARG ;;
  }

  dimension: batch_split_allowed {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchSplitAllowed_CHSPL ;;
  }

  dimension: batches_exit_to_quantity_proposal {
    hidden: yes
    type: string
    sql: ${TABLE}.Batches_ExitToQuantityProposal_CHMVS ;;
  }

  dimension: begin_date_of_validity_period_of_returns_delivery {
    hidden: yes
    type: number
    sql: ${TABLE}.BeginDateOfValidityPeriodOfReturnsDelivery_SPE_BXP_DATE_EXT ;;
  }

  dimension_group: best_before {
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

  dimension: bill_of_lading {
    hidden: yes
    type: string
    sql: ${TABLE}.BillOfLading_BOLNR ;;
  }

  dimension: billing_block_in_sd_document {
    hidden: yes
    type: string
    sql: ${TABLE}.BillingBlockInSdDocument_FAKSK ;;
  }

  dimension_group: billing_index_and_printout_billing {
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

  dimension_group: intercompany_billing {
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

  dimension: billing_type_for_intercompany_billing {
    hidden: yes
    type: string
    sql: ${TABLE}.BillingTypeForIntercompanyBilling_FKAIV ;;
  }

  dimension: block {
    hidden: yes
    type: string
    sql: ${TABLE}.Block_FAKSP ;;
  }

  dimension: bom_explosion_number {
    hidden: yes
    type: string
    sql: ${TABLE}.BomExplosionNumber_SERNR ;;
  }

  dimension: business_area {
    hidden: yes
    type: string
    sql: ${TABLE}.BusinessArea_GSBER ;;
  }

  dimension: business_transaction_type_for_foreign_trade {
    hidden: yes
    type: string
    sql: ${TABLE}.BusinessTransactionTypeForForeignTrade_EXART ;;
  }

  dimension: calculation_of_val_open {
    hidden: yes
    type: string
    sql: ${TABLE}.CalculationOfValOpen_XWOFF ;;
  }

  dimension: cfop_code_and_extension {
    hidden: yes
    type: string
    sql: ${TABLE}.CfopCodeAndExtension_J_1BCFOP ;;
  }

  dimension: change_indicator_for_the_carrier {
    hidden: yes
    type: string
    sql: ${TABLE}.ChangeIndicatorForTheCarrier_SPE_CARRIER_IND ;;
  }

  dimension: change_indicator_for_the_route {
    hidden: yes
    type: string
    sql: ${TABLE}.ChangeIndicatorForTheRoute_SPE_GEOROUTEIND ;;
  }

  dimension: characteristic_value1 {
    hidden: yes
    type: string
    sql: ${TABLE}.CharacteristicValue1_WRF_CHARSTC1 ;;
  }

  dimension: characteristic_value2 {
    hidden: yes
    type: string
    sql: ${TABLE}.CharacteristicValue2_WRF_CHARSTC2 ;;
  }

  dimension: characteristic_value3 {
    hidden: yes
    type: string
    sql: ${TABLE}.CharacteristicValue3_WRF_CHARSTC3 ;;
  }

  dimension: checking_group_for_availability {
    hidden: yes
    type: string
    sql: ${TABLE}.CheckingGroupForAvailability_MTVFP ;;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: cofins_tax_law {
    hidden: yes
    type: string
    sql: ${TABLE}.CofinsTaxLaw_J_1BTAXLW4 ;;
  }

  dimension: combination_criteria_for_delivery {
    hidden: yes
    type: string
    sql: ${TABLE}.CombinationCriteriaForDelivery_ZUKRL ;;
  }

  dimension: commitment_item {
    hidden: yes
    type: string
    sql: ${TABLE}.CommitmentItem_FIPOS ;;
  }

  dimension: communication_number_for_qapi_interface {
    hidden: yes
    type: string
    sql: ${TABLE}.CommunicationNumberForQApiInterface_COMMN ;;
  }

  dimension: company_id {
    hidden: yes
    type: string
    sql: ${TABLE}.CompanyId_VBUND ;;
  }

  dimension: complete_delivery_defined_for_each_sales_order {
    hidden: yes
    type: string
    sql: ${TABLE}.CompleteDeliveryDefinedForEachSalesOrder_AUTLF ;;
  }

  dimension: completion_of_goods_movements_after_difference_postings {
    hidden: yes
    type: string
    sql: ${TABLE}.CompletionOfGoodsMovementsAfterDifferencePostings_SPE_COMPL_MVT ;;
  }

  dimension: component_quantity {
    hidden: yes
    type: number
    sql: ${TABLE}.ComponentQuantity_KMPMG ;;
  }

  dimension: condition_pricing_unit {
    hidden: yes
    type: number
    sql: ${TABLE}.ConditionPricingUnit_KPEIN ;;
  }

  dimension: condition_unit {
    hidden: yes
    type: string
    sql: ${TABLE}.ConditionUnit_KMEIN ;;
  }

  dimension: configuration {
    hidden: yes
    type: string
    sql: ${TABLE}.Configuration_CUOBJ ;;
  }

  dimension: confirmation_number {
    hidden: yes
    type: string
    sql: ${TABLE}.ConfirmationNumber_PRTNR ;;
  }

  dimension_group: confirmation {
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

  dimension: consumption_posting {
    hidden: yes
    type: string
    sql: ${TABLE}.ConsumptionPosting_KZVBR ;;
  }

  dimension: control_key_for_document_transfer_to_tm{
    hidden: yes
    type: string
    sql: ${TABLE}.ControlKeyForDocumentTransferToTm_TM_CTRL_KEY ;;
  }

  dimension: controlling_area {
    hidden: yes
    type: string
    sql: ${TABLE}.ControllingArea_KOKRS ;;
  }

  dimension: conversion_factor_of_delivery_quantity_vrkme_for_meins {
    hidden: yes
    type: number
    sql: ${TABLE}.ConversionFactorOfDeliveryQuantityVrkmeForMeins_UMREV ;;
  }

  dimension: conversion_factor_quantities {
    hidden: yes
    type: number
    sql: ${TABLE}.ConversionFactor_Quantities_UMREF ;;
  }

  dimension: correction_delivery {
    hidden: yes
    type: string
    sql: ${TABLE}.CorrectionDelivery_KLIEF ;;
  }

  dimension: cost_center {
    type: string
    sql: ${TABLE}.CostCenter_KOSTL ;;
  }

  dimension: cost_in_document_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.CostInDocumentCurrency_WAVWR ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.CreateTime_ERZET ;;
  }

  dimension: created_by {
    hidden: yes
    type: string
    sql: ${TABLE}.CreatedBy_ERNAM ;;
  }

  dimension: credit_control_area {
    hidden: yes
    type: string
    sql: ${TABLE}.CreditControlArea_KKBER ;;
  }

  dimension: credit_limit_reference {
    hidden: yes
    type: string
    sql: ${TABLE}.CreditLimitReference_KNKLI ;;
  }

  dimension: credit_management_risk_category {
    hidden: yes
    type: string
    sql: ${TABLE}.CreditManagement_RiskCategory_CTLPC ;;
  }

  dimension: credit_representative_group_for_credit_management {
    hidden: yes
    type: string
    sql: ${TABLE}.CreditRepresentativeGroupForCreditManagement_SBGRP ;;
  }

  dimension: cumulated_batch_split_quantity_in_vrkme_and_float {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulatedBatchSplitQuantityInVrkmeAndFloat_KCMENGVMEF ;;
  }

  dimension: cumulative_batch_quantity_of_all_split_items_in_stock_unit {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeBatchQuantityOfAllSplitItems__inStckunit___KCMENG ;;
  }

  dimension: cumulative_batch_quantity_of_all_split_items_in_sales_units {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeBatchQuantityOfAllSplitItemsInSalesUnits_KCMENGVME ;;
  }

  dimension: cumulative_gross_weight_of_all_batch_split_items {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeGrossWeightOfAllBatchSplitItems_KCBRGEW ;;
  }

  dimension: cumulative_net_weight_of_all_batch_split_items {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeNetWeightOfAllBatchSplitItems_KCNTGEW ;;
  }

  dimension: cumulative_qty_for_schedagr_vendor_pov_spe {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeQtyForSchedagrVendorPOV_SPE_LIEFFZ ;;
  }

  dimension: cumulative_volume_of_all_batch_split_items {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeVolumeOfAllBatchSplitItems_KCVOLUM ;;
  }

  dimension: currency_key_foreign_trade {
    hidden: yes
    type: string
    sql: ${TABLE}.CurrencyKeyForeignTrade_AKWAE ;;
  }

  dimension: currency_key_of_credit_control_area {
    hidden: yes
    type: string
    sql: ${TABLE}.CurrencyKeyOfCreditControlArea_CMWAE ;;
  }

  dimension: current_qty_field_for_arithmetic_operations {
    hidden: yes
    type: string
    sql: ${TABLE}.CurrentQtyFieldForArithmeticOperations_AKMNG ;;
  }

  dimension: customer_credit_group {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerCreditGroup_GRUPP ;;
  }

  dimension: customer_engineering_change_status {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerEngineeringChangeStatus_AESKD ;;
  }

  dimension: customer_factory_calendar {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerFactoryCalendar_KNFAK ;;
  }

  dimension: customer_group1 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup1_KVGR1 ;;
  }

  dimension: customer_group2 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup2_KVGR2 ;;
  }

  dimension: customer_group3 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup3_KVGR3 ;;
  }

  dimension: customer_group4 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup4_KVGR4 ;;
  }

  dimension: customer_group5 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup5_KVGR5 ;;
  }

  dimension: customer_group6 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup6_FSH_KVGR6 ;;
  }

  dimension: customer_group7 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup7_FSH_KVGR7 ;;
  }

  dimension: customer_group8 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup8_FSH_KVGR8 ;;
  }

  dimension: customer_group9 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup9_FSH_KVGR9 ;;
  }

  dimension: customer_group10 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroup10_FSH_KVGR10 ;;
  }

  dimension: customer_group {
    type: string
    sql: ${TABLE}.CustomerGroup_KDGRP ;;
  }

  dimension: customer_has_not_posted_goods_receipt {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerHasNotPostedGoodsReceipt_NACHL ;;
  }

  dimension: customer_number_for_intercompany_billing {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerNumberForIntercompanyBilling_KUNIV ;;
  }

  dimension: dangerous_goods_indicator_profile {
    hidden: yes
    type: string
    sql: ${TABLE}.DangerousGoodsIndicatorProfile_PROFL ;;
  }

  dimension: dangerous_goods_management_profile_in_sd_documents {
    hidden: yes
    type: string
    sql: ${TABLE}.DangerousGoodsManagementProfileInSdDocuments_PROLI ;;
  }

  dimension_group: proof_of_delivery {
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
    sql: ${TABLE}.Date__proofOfDelivery___PODAT ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.DateCreated_ERDAT ;;
  }

  dimension: date_for_intercompany_billing {
    hidden: yes
    type: string
    sql: ${TABLE}.DateForIntercompanyBilling_PIOIV ;;
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
    sql: ${TABLE}.DateOfLastChange_AEDAT ;;
  }

  dimension_group: last_change_hdr {
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

  dimension_group: manufacture {
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

  dimension_group: record_created {
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

  dimension: default_follow {
    hidden: yes
    type: string
    sql: ${TABLE}.DefaultFollow_SPE_FOLLOW_UP ;;
  }

  dimension: delivery_block_document_header {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryBlock_documentHeader_LIFSK ;;
  }

  dimension: delivery_category {
    type: string
    sql: ${TABLE}.DeliveryCategory_DLVTP ;;
  }

  dimension: delivery_completed {
    hidden: yes
    type: string
    sql: ${TABLE}.deliveryCompleted_SPE_GEN_ELIKZ ;;
  }

  dimension: delivery_confirmation_status {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryConfirmationStatus_SPE_ACC_APP_STS ;;
  }

  dimension_group: delivery {
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
    sql: ${TABLE}.DeliveryDate_LFDAT ;;
  }

  dimension: delivery_delay {
    label: "Delivery Delay (Days)"
    # hidden: yes
    type: number
    sql: ${TABLE}.delivery_delay ;;
  }

  dimension: delivery_group_items_are_delivered_together {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryGroup__itemsAreDeliveredTogether___GRKOR ;;
  }

  dimension: delivery_has_statusin_plant {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryHasStatusinPlant_IMWRK ;;
  }

  dimension: delivery_item_category {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryItemCategory_PSTYV ;;
  }

  dimension: delivery_item_fsh_vas_prnt_id {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryItem_FSH_VAS_PRNT_ID ;;
  }

  dimension: delivery_item {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryItem_POSNR ;;
  }

  dimension: delivery_priority{
    type: string
    sql: ${TABLE}.DeliveryPriority_LPRIO ;;
  }

  dimension: delivery_split_initiator {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliverySplitInitiator_DLV_SPLIT_INITIA ;;
  }

  dimension: delivery_type_folar {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryType_FOLAR ;;
  }

  dimension: delivery_type_lfart {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryType_LFART ;;
  }

  dimension: delivery {
    type: string
    sql: ${TABLE}.Delivery_VBELN ;;
  }

  dimension: delivery_version_at_confirmation {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryVersionAtConfirmation_SPE_VERSION ;;
  }

  dimension: delivery_version {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryVersion_DLV_VERSION ;;
  }

  dimension: delivery_within_one_warehouse {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryWithinOneWarehouse_LISPL ;;
  }

  dimension: denominator_divisor_for_conversion_of_sales_qty_into_sku {
    hidden: yes
    type: number
    sql: ${TABLE}.Denominator__divisor__ForConversionOfSalesQtyIntoSku_UMVKN ;;
  }

  dimension: denominator_of_quotient_for_unit_of_measure_conversion {
    hidden: yes
    type: number
    sql: ${TABLE}.DenominatorOfQuotientForUnitOfMeasureConversion_SPE_APO_QNTYDIV ;;
  }

  dimension: department_number {
    hidden: yes
    type: string
    sql: ${TABLE}.DepartmentNumber_ABTNR ;;
  }

  dimension: depreciation_percentage_for_financial_document_processing {
    hidden: yes
    type: number
    sql: ${TABLE}.DepreciationPercentageForFinancialDocumentProcessing_AKPRZ ;;
  }

  dimension: description_of_a_geographical_route {
    hidden: yes
    type: string
    sql: ${TABLE}.DescriptionOfAGeographicalRoute_SPE_GEOROUTE ;;
  }

  dimension: description_of_print_profile{
    hidden: yes
    type: string
    sql: ${TABLE}.DescriptionOfPrintProfile_PRINTER_PROFILE ;;
  }

  dimension: dest_storage_data_from_preceding_document {
    hidden: yes
    type: string
    sql: ${TABLE}.DestStorageDataFromPrecedingDocument_FLGWM ;;
  }

  dimension: determination_of_batch_entry_in_the_productionprocess_order {
    hidden: yes
    type: string
    sql: ${TABLE}.DeterminationOfBatchEntryInTheProductionprocessOrder_KZECH ;;
  }

  dimension: distribution_channel_for_intercompany_billing{
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionChannelForIntercompanyBilling_VTWIV ;;
  }

  dimension: distribution_channel {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionChannel_VTWEG ;;
  }

  dimension: distribution_delivery_original_item {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionDelivery_OriginalItem_VERURPOS ;;
  }

  dimension: distribution_delivery_original_system {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionDelivery_OriginalSystem_VERURSYS ;;
  }

  dimension: distribution_delivery {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionDelivery_VERUR ;;
  }

  dimension: distribution_status_decentralized_warehouse_processing {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionStatus__decentralizedWarehouseProcessing_SPE_REV_VLSTK ;;
  }

  dimension: distribution_status {
    hidden: yes
    type: string
    sql: ${TABLE}.DistributionStatus_VLSTK ;;
  }

  dimension: division_for_intercompany_billing {
    hidden: yes
    type: string
    sql: ${TABLE}.DivisionForIntercompanyBilling_SPAIV ;;
  }

  dimension: division {
    hidden: yes
    type: string
    sql: ${TABLE}.Division_SPART ;;
  }

  dimension_group: document {
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

  dimension: document_deletion_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentDeletionIndicator_SPE_LOEKZ ;;
  }

  dimension: door_for_warehouse_number {
    hidden: yes
    type: string
    sql: ${TABLE}.DoorForWarehouseNumber_LGTOR ;;
  }

  dimension: end_date_of_internal_validity_period_of_returns_delivery {
    hidden: yes
    type: number
    sql: ${TABLE}.EndDateOfInternalValidityPeriodOfReturnsDelivery_SPE_EXP_DATE_INT ;;
  }

  dimension: end_date_of_validity_period_of_returns_delivery {
    hidden: yes
    type: number
    sql: ${TABLE}.EndDateOfValidityPeriodOfReturnsDelivery_SPE_EXP_DATE_EXT ;;
  }

  dimension_group: entry_ {
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

  dimension: environmentally_relevant {
    hidden: yes
    type: string
    sql: ${TABLE}.EnvironmentallyRelevant_KZUMW ;;
  }

  dimension: event_group_time_segment_delivery_header {
    hidden: yes
    type: string
    sql: ${TABLE}.EventGroupTimeSegmentDeliveryHeader_TSEGTP ;;
  }

  dimension: ewm_billing_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.EwmBillingIndicator_SPE_BILLING_IND ;;
  }

  dimension: exception_code_warehouse_for_quantity_difference {
    hidden: yes
    type: string
    sql: ${TABLE}.ExceptionCodeWarehouseForQuantityDifference_SPE_EXCEPT_CODE ;;
  }

  dimension: exchange_rate_for_letter_credit_procg_in_foreign_trade {
    hidden: yes
    type: number
    sql: ${TABLE}.ExchangeRateForLetterCreditProcgInForeignTrade_AKKUR ;;
  }

  dimension: exchange_rate_for_letter_foreign_trade {
    hidden: yes
    type: number
    sql: ${TABLE}.ExchangeRateForLetterForeignTrade_AKKUR ;;
  }

  dimension: exchange_rate_for_statistics {
    hidden: yes
    type: number
    sql: ${TABLE}.ExchangeRateForStatistics_STCUR ;;
  }

  dimension: export_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.ExportIndicator_EXPKZ ;;
  }

  dimension: external_identification_of_delivery_note {
    hidden: yes
    type: string
    sql: ${TABLE}.ExternalIdentificationOfDeliveryNote_LIFEX ;;
  }

  dimension: external_item_identifier {
    hidden: yes
    type: string
    sql: ${TABLE}.ExternalItemIdentifier_SPE_LIFEXPOS2 ;;
  }

  dimension: external_item_number {
    hidden: yes
    type: string
    sql: ${TABLE}.ExternalItemNumber_LIFEXPOS ;;
  }

  dimension: externally_entered_posting_amount_in_local_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.ExternallyEnteredPostingAmountInLocalCurrency_EXBWR ;;
  }

  dimension: externally_entered_sales_value_in_local_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.ExternallyEnteredSalesValueInLocalCurrency_EXVKW ;;
  }

  dimension: fashion_collection {
    hidden: yes
    type: string
    sql: ${TABLE}.FashionCollection_FSH_COLLECTION ;;
  }

  dimension: fashion_theme {
    hidden: yes
    type: string
    sql: ${TABLE}.FashionTheme_FSH_THEME ;;
  }

  dimension: final_issue_for_this_reservation {
    hidden: yes
    type: string
    sql: ${TABLE}.FinalIssueForThisReservation_KZEAR ;;
  }

  dimension: financial_doc_number {
    hidden: yes
    type: string
    sql: ${TABLE}.FinancialDocNumber_LCNUM ;;
  }

  dimension: fiscal_year_of_current_period {
    hidden: yes
    type: string
    sql: ${TABLE}.FiscalYearOfCurrentPeriod_LFGJA ;;
  }

  dimension: fixed_shipping_processing_time_in_days {
    hidden: yes
    type: number
    sql: ${TABLE}.FixedShippingProcessingTimeInDays_VBEAF ;;
  }

  dimension: fm_budget_period {
    hidden: yes
    type: string
    sql: ${TABLE}.Fm_BudgetPeriod_BUDGET_PD ;;
  }

  dimension: form_of_payment_guarantee {
    hidden: yes
    type: string
    sql: ${TABLE}.FormOfPaymentGuarantee_ABFOR ;;
  }

  dimension: functional_area {
    hidden: yes
    type: string
    sql: ${TABLE}.FunctionalArea_FKBER ;;
  }

  dimension: fund {
    hidden: yes
    type: string
    sql: ${TABLE}.Fund_GEBER ;;
  }

  dimension: funds_center {
    hidden: yes
    type: string
    sql: ${TABLE}.FundsCenter_FISTL ;;
  }

  dimension: gl_account_number {
    hidden: yes
    type: string
    sql: ${TABLE}.GlAccountNumber_KONTO ;;
  }

  dimension: goods_movement_control {
    hidden: yes
    type: string
    sql: ${TABLE}.GoodsMovementControl_GMCONTROL ;;
  }

  dimension: goods_movement_control_hu {
    hidden: yes
    type: string
    sql: ${TABLE}.GoodsMovementControl_Hu_POSTING_CHANGE ;;
  }

  dimension: goods_receiptissue_slip_number {
    hidden: yes
    type: string
    sql: ${TABLE}.GoodsReceiptissueSlipNumber_XABLN ;;
  }

  dimension: goods_traffic_type {
    hidden: yes
    type: string
    sql: ${TABLE}.GoodsTrafficType_SPE_GTS_REL ;;
  }

  dimension: grant {
    hidden: yes
    type: string
    sql: ${TABLE}.Grant_GRANT_NBR ;;
  }

  dimension: gross_weight {
    hidden: yes
    type: number
    sql: ${TABLE}.GrossWeight_BRGEW ;;
  }

  dimension: guaranteed_factor_between_0_and_1 {
    hidden: yes
    type: number
    sql: ${TABLE}.Guaranteed__factorBetween0And1___ABGES ;;
  }

  dimension_group: handover_at_the_handover_location {
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
    sql: ${TABLE}.HandoverDateAtTheHandoverLocation_HANDOVERDATE ;;
  }

  dimension: higher_level_item_in_bom {
    hidden: yes
    type: string
    sql: ${TABLE}.HigherLevelItemInBOM_UEPOS ;;
  }

  dimension: higher_level_item_of_batch_split_item {
    hidden: yes
    type: string
    sql: ${TABLE}.HigherLevelItemOfBatchSplitItem_UECHA ;;
  }

  dimension: higher_level_item_usage {
    hidden: yes
    type: string
    sql: ${TABLE}.HigherLevelItemUsage_UEPVW ;;
  }

  dimension: id_for_external_transport_system {
    hidden: yes
    type: string
    sql: ${TABLE}.IdForExternalTransportSystem_TPSID ;;
  }

  dimension: id_for_material_determination {
    hidden: yes
    type: string
    sql: ${TABLE}.IdForMaterialDetermination_PROSA ;;
  }

  dimension: id_item_with_active_credit_function_relevant_for_credit {
    hidden: yes
    type: string
    sql: ${TABLE}.Id_ItemWithActiveCreditFunctionRelevantForCredit_CMPNT ;;
  }

  dimension: id_leading_unit_of_measure_for_completing_a_transaction {
    hidden: yes
    type: string
    sql: ${TABLE}.Id_LeadingUnitOfMeasureForCompletingATransaction_KZFME ;;
  }

  dimension: inbound_delivery_item_has_status_in_plant {
    hidden: yes
    type: string
    sql: ${TABLE}.InboundDeliveryItemHasStatusinPlant_SPE_IMWRK ;;
  }

  dimension: incoterms_part1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Incoterms__part1___INCO1 ;;
  }

  dimension: incoterms_part2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Incoterms__part2___INCO2 ;;
  }

  dimension: incoterms_location2 {
    hidden: yes
    type: string
    sql: ${TABLE}.IncotermsLocation2_INCO3_L ;;
  }

  dimension: indicator_deactivate_availability_check {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DeactivateAvailabilityCheck_NOATP ;;
  }

  dimension: indicator_delivery_item_is_ahu_item {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DeliveryItemIsAHuItem_HUPOS ;;
  }

  dimension: indicator_document_contains_dangerous_goods {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DocumentContainsDangerousGoods_CONT_DG ;;
  }

  dimension: indicator_dynamic_storage_bin_in_warehouse_management {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DynamicStorageBinInWarehouseManagement_KZDLG ;;
  }

  dimension: indicator_for_controlling_goods_movement {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForControllingGoodsMovement_KZWAB ;;
  }

  dimension: indicator_for_picking_control {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForPickingControl_KOMKZ ;;
  }

  dimension: indicator_for_situation {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForSituation_SITUA ;;
  }

  dimension: indicator_inventory_management_active {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorInventoryManagementActive_KZBEF ;;
  }

  dimension: indicator_item_not_relevant_for_goods_movements {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_ItemNotRelevantForGoodsMovements_NOWAB ;;
  }

  dimension: indicator_not_relevant_for_picking {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_NotRelevantForPicking_NOPCK ;;
  }

  dimension: indicator_separate_valuation {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_SeparateValuation_BWTEX ;;
  }

  dimension: indicator_unlimited_overdelivery_allowed {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_UnlimitedOverdeliveryAllowed_UEBTK ;;
  }

  dimension: indicator_unmat_in_main_posting {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_UnmatInMainPosting_SHKZG_UM ;;
  }

  dimension: inspection_lot_number {
    hidden: yes
    type: string
    sql: ${TABLE}.InspectionLotNumber_QPLOS ;;
  }

  dimension: inspections_inspection_outcome_guid_set_by_ewm {
    hidden: yes
    type: string
    sql: ${TABLE}.Inspections_InspectionOutcomeGuidSetByEwm_SPE_INSPOUT_GUID ;;
  }

  dimension: internal_class_number {
    hidden: yes
    type: string
    sql: ${TABLE}.InternalClassNumber_CLINT ;;
  }

  dimension: internal_delivery_schedule_number {
    hidden: yes
    type: string
    sql: ${TABLE}.InternalDeliveryScheduleNumber_ABRLI ;;
  }

  dimension: internal_field_do_not_use_kcmeng_in_float_mum {
    hidden: yes
    type: number
    sql: ${TABLE}.InternalFieldDoNotUseKcmengInFloatMum_KCMENG_FLO ;;
  }

  dimension: internal_field_do_not_use_lfimg_in_float_mum {
    hidden: yes
    type: number
    sql: ${TABLE}.InternalFieldDoNotUseLfimgInFloatMum_LFIMG_FLO ;;
  }

  dimension: internal_field_do_not_use_lgmng_in_float_mum {
    hidden: yes
    type: number
    sql: ${TABLE}.InternalFieldDoNotUseLgmngInFloatMum_LGMNG_FLO ;;
  }

  dimension: internal_object_number_of_the_batch_classification {
    hidden: yes
    type: string
    sql: ${TABLE}.InternalObjectNumberOfTheBatchClassification_CUOBJ_CH ;;
  }

  dimension: international_article_number_eanupc {
    hidden: yes
    type: string
    sql: ${TABLE}.InternationalArticleNumber__eanupc___EAN11 ;;
  }

  dimension: invoice_creation_before_goods_issue {
    hidden: yes
    type: string
    sql: ${TABLE}.InvoiceCreationBeforeGoodsIssue_SPE_INV_BFR_GI ;;
  }

  dimension: invoice_dates {
    hidden: yes
    type: string
    sql: ${TABLE}.InvoiceDates_PERFK ;;
  }

  dimension: is_return {
    type: yesno
    sql: ${TABLE}.IS_RETURN='X' ;;
  }

  dimension: iss_tax_law {
    hidden: yes
    type: string
    sql: ${TABLE}.IssTaxLaw_J_1BTAXLW3 ;;
  }

  dimension: item_credit_price {
    hidden: yes
    type: number
    sql: ${TABLE}.ItemCreditPrice_CMPRE_FLT ;;
  }

  dimension: item_group {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemGroup_FSH_ITEM_GROUP ;;
  }

  dimension: item_number {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemNumber_FSH_ITEM ;;
  }

  dimension: item_number_in_sales_order {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemNumberInSalesOrder_KDPOS ;;
  }

  dimension: item_number_of_allocation_table {
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

  dimension: item_of_areference_document {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemOfAReferenceDocument_LFPOS ;;
  }

  dimension: item_type {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemType_POSAR ;;
  }

  dimension: kanban_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.KanbanIndicator_KBNKZ ;;
  }

  dimension: kanbansequence_number {
    hidden: yes
    type: string
    sql: ${TABLE}.KanbansequenceNumber_KANNR ;;
  }

  dimension: last_changer_system_type{
    hidden: yes
    type: string
    sql: ${TABLE}.LastChangerSystemType_SPE_CHNG_SYS ;;
  }

  dimension: last_vas_item_number {
    hidden: yes
    type: string
    sql: ${TABLE}.LastVasItemNumber_FSH_VAS_LAST_ITEM ;;
  }

  dimension_group: loading {
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
    sql: ${TABLE}.LoadingDate_LDDAT ;;
  }

  dimension: loading_group {
    hidden: yes
    type: string
    sql: ${TABLE}.LoadingGroup_LADGR ;;
  }

  dimension: loading_point {
    hidden: yes
    type: string
    sql: ${TABLE}.LoadingPoint_LSTEL ;;
  }

  dimension_group: loading_time {
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

  dimension: location_for_aphysical_handover_of_goods {
    hidden: yes
    type: string
    sql: ${TABLE}.LocationForAPhysicalHandoverOfGoods_HANDOVERLOC ;;
  }

  dimension: logical_system_in_the_preceding_document {
    hidden: yes
    type: string
    sql: ${TABLE}.LogicalSystemInThePrecedingDocument_VGSYS ;;
  }

  dimension_group: material_availability {
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

  dimension: material_belonging_to_the_customer {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialBelongingToTheCustomer_KDMAT ;;
  }

  dimension: material_entered {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialEntered_MATWA ;;
  }

  dimension: material_freight_group {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialFreightGroup_MFRGR ;;
  }

  dimension: material_group1 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup1_MVGR1 ;;
  }

  dimension: material_group2 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup2_MVGR2 ;;
  }

  dimension: material_group3 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup3_MVGR3 ;;
  }

  dimension: material_group4 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup4_MVGR4 ;;
  }

  dimension: material_group5 {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup5_MVGR5 ;;
  }

  dimension: material_group {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup_MATKL ;;
  }

  dimension: material_group_packaging_materials {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialGroup_PackagingMaterials_MAGRV ;;
  }

  dimension: material_number_corresponding_to_manufacturer_part_number {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialNumberCorrespondingToManufacturerPartNumber_EMATN ;;
  }

  dimension: material_number {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
    link: {
      label: "Product Snapshot"
      url: "/dashboards-next/cortex_data_foundation::product_snapshot?Product%20Number={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: material_staging_indicator_for_production_supply {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialStagingIndicatorForProductionSupply_BERKZ ;;
  }

  dimension_group: material_staging {
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

  dimension: material_type {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialType_MTART ;;
  }

  dimension: maximum_number_of_partial_deliveries_allowed_per_item {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumNumberOfPartialDeliveriesAllowedPerItem_ANTLF ;;
  }

  dimension: means_of_transport_id {
    hidden: yes
    type: string
    sql: ${TABLE}.MeansOfTransportId_TRAID ;;
  }

  dimension: means_of_transport_spe_ttype {
    hidden: yes
    type: string
    sql: ${TABLE}.MeansOfTransport_SPE_TTYPE ;;
  }

  dimension: means_of_transport_trmtyp {
    hidden: yes
    type: string
    sql: ${TABLE}.MeansOfTransport_TRMTYP ;;
  }

  dimension: means_of_transport_type {
    hidden: yes
    type: string
    sql: ${TABLE}.MeansOfTransportType_TRATY ;;
  }

  dimension: measurement_unit_system {
    hidden: yes
    type: string
    sql: ${TABLE}.MeasurementUnitSystem_SPE_UNIT_SYSTEM ;;
  }

  dimension: mfr_part_profile {
    hidden: yes
    type: string
    sql: ${TABLE}.MfrPartProfile_MPROF ;;
  }

  dimension: movement_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.MovementIndicator_KZBEW ;;
  }

  dimension: movement_type_inventory_management{
    hidden: yes
    type: string
    sql: ${TABLE}.MovementType__inventoryManagement___BWART ;;
  }

  dimension: movement_type_for_warehouse_management {
    hidden: yes
    type: string
    sql: ${TABLE}.MovementTypeForWarehouseManagement_BWLVS ;;
  }

  dimension: mrp_area {
    hidden: yes
    type: string
    sql: ${TABLE}.MrpArea_BERID ;;
  }

  dimension: multi_level_goods_receipt_automotive {
    hidden: yes
    type: string
    sql: ${TABLE}.MultiLevelGoodsReceiptAutomotive_BORGR_GRP ;;
  }

  dimension: name_of_person_who_changed_object_hdr {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfPersonWhoChangedObjectHdr_AENAM ;;
  }

  dimension: name_of_person_who_created_the_object {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfPersonWhoCreatedTheObject_ERNAM ;;
  }

  dimension: net_price {
    hidden: yes
    type: number
    sql: ${TABLE}.NetPrice_NETPR ;;
  }

  dimension: net_value_in_document_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.NetValueInDocumentCurrency_NETWR ;;
  }

  dimension: net_value_of_the_sales_order_in_document_currency {
    hidden: yes
    type: number
    sql: ${TABLE}.NetValueOfTheSalesOrderInDocumentCurrency_NETWR ;;
  }

  dimension: net_weight_hdr {
    hidden: yes
    type: number
    sql: ${TABLE}.NetWeightHdr_NTGEW ;;
  }

  dimension: net_weight {
    hidden: yes
    type: number
    sql: ${TABLE}.NetWeight_NTGEW ;;
  }

  dimension_group: next {
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

  dimension: non_preferential_origin {
    hidden: yes
    type: string
    sql: ${TABLE}.NonPreferentialOrigin_SPE_HERKL ;;
  }

  dimension: not_relevant_for_distribution_for {
    hidden: yes
    type: string
    sql: ${TABLE}.NotRelevantForDistributionForWms_LFDEZ ;;
  }

  dimension: number_of_condition_record_from_batch_determination {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfConditionRecordFromBatchDetermination_KNUMH_CH ;;
  }

  dimension: number_of_delivery_items_with_precedessor_in_other_system {
    hidden: yes
    type: number
    sql: ${TABLE}.NumberOfDeliveryItemsWithPrecedessorInOtherSystem_VGANZ ;;
  }

  dimension: number_of_document_condition_pricing {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfDocumentConditionPricing_KNUMP ;;
  }

  dimension: number_of_foreign_trade_data_in_mm_and_sd_documents {
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

  dimension: number_of_serial_numbers {
    hidden: yes
    type: number
    sql: ${TABLE}.NumberOfSerialNumbers_ANZSN ;;
  }

  dimension: number_of_the_document_condition {
    hidden: yes
    type: string
    sql: ${TABLE}.NumberOfTheDocumentCondition_KNUMV ;;
  }

  dimension: numerator_factor_for_conversion_of_sales_quantity_into_sku {
    hidden: yes
    type: number
    sql: ${TABLE}.Numerator__factor__ForConversionOfSalesQuantityIntoSku_UMVKZ ;;
  }

  dimension: numerator_of_quotient_for_unit_of_measure_conversion_spe {
    hidden: yes
    type: number
    sql: ${TABLE}.NumeratorOfQuotientForUnitOfMeasureConversion_SPE_APO_QNTYFAC ;;
  }

  dimension: object_number_at_header_level {
    hidden: yes
    type: string
    sql: ${TABLE}.ObjectNumberAtHeaderLevel_OBJKO ;;
  }

  dimension: object_number_at_item_level {
    hidden: yes
    type: string
    sql: ${TABLE}.ObjectNumberAtItemLevel_OBJPO ;;
  }

  dimension: order_combination_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.OrderCombinationIndicator_KZAZU ;;
  }

  dimension: order_item_number {
    hidden: yes
    type: string
    sql: ${TABLE}.OrderItemNumber_POSNR_PP ;;
  }

  dimension: order_number_aufnr {
    hidden: yes
    type: string
    sql: ${TABLE}.OrderNumber_AUFNR ;;
  }

  dimension: order_number_ternr {
    hidden: yes
    type: string
    sql: ${TABLE}.OrderNumber_TERNR ;;
  }

  dimension: original_quantity_of_delivery_item {
    hidden: yes
    type: number
    sql: ${TABLE}.OriginalQuantityOfDeliveryItem_ORMNG ;;
  }

  dimension: original_system_type_itm {
    hidden: yes
    type: string
    sql: ${TABLE}.OriginalSystemTypeItm_SPE_ORIG_SYS ;;
  }

  dimension: original_system_type {
    hidden: yes
    type: string
    sql: ${TABLE}.OriginalSystemType_SPE_ORIG_SYS ;;
  }

  dimension: originating_document {
    hidden: yes
    type: string
    sql: ${TABLE}.OriginatingDocument_VBELV ;;
  }

  dimension: originating_item {
    hidden: yes
    type: string
    sql: ${TABLE}.OriginatingItem_POSNV ;;
  }

  dimension: overdelivery_tolerance_limit {
    hidden: yes
    type: number
    sql: ${TABLE}.OverdeliveryToleranceLimit_UEBTO ;;
  }

  dimension: pack_accumulated_batches_movement_type_item {
    hidden: yes
    type: string
    sql: ${TABLE}.PackAccumulatedBatchesMovementTypeItem_CHHPV ;;
  }

  dimension: packing_control {
    hidden: yes
    type: string
    sql: ${TABLE}.PackingControl_PCKPF ;;
  }

  dimension: partial_delivery_at_item_level {
    hidden: yes
    type: string
    sql: ${TABLE}.PartialDeliveryAtItemLevel_KZTLF ;;
  }

  dimension: partial_lot_number {
    hidden: yes
    type: string
    sql: ${TABLE}.PartialLotNumber_QTLOS ;;
  }

  dimension: partner_identification_progressive_identification_number {
    hidden: yes
    type: string
    sql: ${TABLE}.PartnerIdentification_ProgressiveIdentificationNumber_SPE_PRO_NUMBER ;;
  }

  dimension: payment_guarantee_procedure {
    hidden: yes
    type: string
    sql: ${TABLE}.PaymentGuaranteeProcedure_ABSSC ;;
  }

  dimension: picked_items_location {
    hidden: yes
    type: string
    sql: ${TABLE}.PickedItemsLocation_BEROT ;;
  }

  dimension_group: picking {
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

  dimension: picking_is_subject_to_confirmation {
    hidden: yes
    type: string
    sql: ${TABLE}.PickingIsSubjectToConfirmation_KOQUI ;;
  }

  dimension_group: picking_time {
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

  dimension: pis_tax_law {
    hidden: yes
    type: string
    sql: ${TABLE}.PisTaxLaw_J_1BTAXLW5 ;;
  }

  dimension_group: planned_goods_movement {
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

  dimension: planning_material {
    hidden: yes
    type: string
    sql: ${TABLE}.PlanningMaterial_VPMAT ;;
  }

  dimension: planning_plant {
    hidden: yes
    type: string
    sql: ${TABLE}.PlanningPlant_VPWRK ;;
  }

  dimension: planning_type {
    hidden: yes
    type: string
    sql: ${TABLE}.PlanningType_PLART ;;
  }

  dimension: plant {
    hidden: no
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: pod_control_proof_of_delivery {
    hidden: yes
    type: string
    sql: ${TABLE}.PodControl_proofOfDelivery___PODREL ;;
  }

  dimension: pod_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.PodIndicator_KZPOD ;;
  }

  dimension: preceding_document_has_resulted_from_reference {
    hidden: yes
    type: string
    sql: ${TABLE}.PrecedingDocumentHasResultedFromReference_VGREF ;;
  }

  dimension: preference_indicator_in_export_import {
    hidden: yes
    type: string
    sql: ${TABLE}.PreferenceIndicatorInExportimport_PREFE ;;
  }

  dimension: pricing_procedure {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingProcedure_KALSM ;;
  }

  dimension: product_hierarchy {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductHierarchy_PRODH ;;
  }

  dimension: production_supply_area {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductionSupplyArea_PRVBE ;;
  }

  dimension: profit_center {
    hidden: yes
    type: string
    sql: ${TABLE}.ProfitCenter_PRCTR ;;
  }

  dimension: profitability_segment_number {
    hidden: yes
    type: string
    sql: ${TABLE}.ProfitabilitySegmentNumber_PAOBJNR ;;
  }

  dimension: project_definition_internal {
    hidden: yes
    type: string
    sql: ${TABLE}.ProjectDefinition__internal___PSPNR ;;
  }

  dimension: promotion {
    hidden: yes
    type: string
    sql: ${TABLE}.Promotion_AKTNR ;;
  }

  dimension: proposed_billing_type_for_a_delivery_related_billing_doc{
    hidden: yes
    type: string
    sql: ${TABLE}.ProposedBillingTypeForADeliveryRelatedBillingDoc_FKARV ;;
  }

  dimension: purchase_order_for_consignment {
    hidden: yes
    type: string
    sql: ${TABLE}.PurchaseOrderForConsignment_CONS_ORDER ;;
  }

  dimension: quantity_in_purchase_order_price_unit {
    hidden: yes
    type: number
    sql: ${TABLE}.QuantityInPurchaseOrderPriceUnit_BPMNG ;;
  }

  dimension: quantity_is_fixed {
    hidden: yes
    type: string
    sql: ${TABLE}.QuantityIsFixed_FMENG ;;
  }

  dimension: reason_for_goods_movment {
    hidden: yes
    type: string
    sql: ${TABLE}.ReasonForGoodsMovment_GRUND ;;
  }

  dimension: reason_for_material_substitution {
    hidden: yes
    type: string
    sql: ${TABLE}.ReasonForMaterialSubstitution_SPE_MAT_SUBST ;;
  }

  dimension: receiving_plant_for_deliveries {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingPlantForDeliveries_WERKS ;;
  }

  dimension: receiving_plant_issuing_plant {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingPlantissuingPlant_UMWRK ;;
  }

  dimension: receiving_point {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingPoint_EMPST ;;
  }

  dimension: receiving_issuing_batch {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingissuingBatch_UMCHA ;;
  }

  dimension: receiving_issuing_material {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingissuingMaterial_UMMAT ;;
  }

  dimension: receiving_issuing_storage_location {
    hidden: yes
    type: string
    sql: ${TABLE}.ReceivingissuingStorageLocation_UMLGO ;;
  }

  dimension: receiving_issuing_wbs_element {
    hidden: yes
    type: string
    sql: ${TABLE}.Receivingissuing_wbsElement_UM_PS_PSP_PNR ;;
  }

  dimension: record_type {
    hidden: yes
    type: string
    sql: ${TABLE}.RecordType_RSART ;;
  }

  dimension: reference_document_number {
    type: string
    sql: ${TABLE}.ReferenceDocumentNumber_XBLNR ;;
  }

  dimension: reference_movement_type_for_wm_from_material_movements {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceMovementTypeForWmFromMaterialMovements_RBLVS ;;
  }

  dimension: rel_type {
    hidden: yes
    type: string
    sql: ${TABLE}.RelType_ABART ;;
  }

  dimension_group: releaseof_the_document_determined_by_credit_management {
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

  dimension: release_time_stamp_spe_rel {
    hidden: yes
    type: number
    sql: ${TABLE}.ReleaseTimeStamp_SPE_REL_TMSTMP ;;
  }

  dimension: released_credit_value_of_the_document {
    hidden: yes
    type: number
    sql: ${TABLE}.ReleasedCreditValueOfTheDocument_AMTBL ;;
  }

  dimension: relevant_for_billing {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantForBilling_FKREL ;;
  }

  dimension: relevant_to_allocation_table {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantToAllocationTable_AUREL ;;
  }

  dimension: repair_processing_classification_of_items {
    hidden: yes
    type: string
    sql: ${TABLE}.RepairProcessing_ClassificationOfItems_VKGRU ;;
  }

  dimension: requirement_segment {
    hidden: yes
    type: string
    sql: ${TABLE}.RequirementSegment_SGT_RCAT ;;
  }

  dimension: requirement_type {
    hidden: yes
    type: string
    sql: ${TABLE}.RequirementType_BDART ;;
  }

  dimension: requirements_class {
    hidden: yes
    type: string
    sql: ${TABLE}.RequirementsClass_BEDAR_LF ;;
  }

  dimension: retention_quantity_for_scrap {
    hidden: yes
    type: number
    sql: ${TABLE}.RetentionQuantityForScrap_SPE_KEEP_QTY ;;
  }

  dimension: return_material_authorization_number {
    hidden: yes
    type: string
    sql: ${TABLE}.ReturnMaterialAuthorizationNumber_SPE_AUTH_NUMBER ;;
  }

  dimension: returns_flag_showing_that_an_asn_is_cancelled {
    hidden: yes
    type: string
    sql: ${TABLE}.Returns_FlagShowingThatAnAsnIsCancelled_SPE_RET_CANC ;;
  }

  dimension: returns_item {
    hidden: yes
    type: string
    sql: ${TABLE}.ReturnsItem_SHKZG ;;
  }

  dimension: revenue_accounting_type {
    hidden: yes
    type: string
    sql: ${TABLE}.RevenueAccountingType_FARR_RELTYPE ;;
  }

  dimension: rma_completion_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.RmaCompletionIndicator_SPE_AUTH_COMPLET ;;
  }

  dimension: route_code_for_sap_global_trade_services {
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

  dimension: route_schedule {
    hidden: yes
    type: string
    sql: ${TABLE}.RouteSchedule_AULWE ;;
  }

  dimension: sales_district {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesDistrict_BZIRK ;;
  }

  dimension: sales_group {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesGroup_VKGRP ;;
  }

  dimension: sales_office_hdr {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOfficeHdr_VKBUR ;;
  }

  dimension: sales_office {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOffice_VKBUR ;;
  }

  dimension: sales_order_item {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrderItem_VGPOS ;;
  }

  dimension: sales_order_number_kdauf {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrderNumber_KDAUF ;;
  }

  dimension: sales_order_number {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrderNumber_VGBEL ;;
  }

  dimension: sales_organization_for_intercompany_billing {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrganizationForIntercompanyBilling_VKOIV ;;
  }

  dimension: sales_organization {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesOrganization_VKORG ;;
  }

  dimension: sales_unit {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesUnit_VRKME ;;
  }

  dimension: sap_global_trade_services_storage_status_of_delivery {
    hidden: yes
    type: string
    sql: ${TABLE}.SapGlobalTradeServices_StorageStatusOfDelivery_SAKES ;;
  }

  dimension: scenario_logistic_execution {
    hidden: yes
    type: string
    sql: ${TABLE}.ScenarioLogisticExecution_SPE_LE_SCENARIO ;;
  }

  dimension: scrap_indicator_for_ewm_processing {
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

  dimension: sd_document_currency {
    hidden: yes
    type: string
    sql: ${TABLE}.SdDocumentCurrency_WAERK ;;
  }

  dimension: sd_tax_code {
    hidden: yes
    type: string
    sql: ${TABLE}.SdTaxCode_J_1BTXSDC ;;
  }

  dimension: search_procedure_for_batch_determination {
    hidden: yes
    type: string
    sql: ${TABLE}.SearchProcedureForBatchDetermination_KALSM_CH ;;
  }

  dimension: season {
    hidden: yes
    type: string
    sql: ${TABLE}.Season_FSH_SEASON ;;
  }

  dimension: season_year {
    hidden: yes
    type: string
    sql: ${TABLE}.SeasonYear_FSH_SEASON_YEAR ;;
  }

  dimension: sequence_of_intermediate_locations_in_returns_process {
    hidden: yes
    type: string
    sql: ${TABLE}.SequenceOfIntermediateLocationsInReturnsProcess_SPE_LOC_SEQ ;;
  }

  dimension: sequential_number_of_vendor_confirmation {
    hidden: yes
    type: string
    sql: ${TABLE}.SequentialNumberOfVendorConfirmation_PRE_VL_ETENS ;;
  }

  dimension: serial_number_profile {
    hidden: yes
    type: string
    sql: ${TABLE}.SerialNumberProfile_SERAIL ;;
  }

  dimension: ship_to_party {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipToParty_KUNNR ;;
  }

  dimension: shipment_blocking_reason {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipmentBlockingReason_TRSPG ;;
  }

  dimension: shipment_information_status {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipmentInformationStatus_SPE_SHP_INF_STS ;;
  }

  dimension: shipping_conditions {
    hidden: yes
    type: string
    sql: ${TABLE}.ShippingConditions_VSBED ;;
  }

  dimension: shipping_pointreceiving_point {
    hidden: yes
    type: string
    sql: ${TABLE}.ShippingPointreceivingPoint_VSTEL ;;
  }

  dimension: shipping_pricing_procedure {
    hidden: yes
    type: string
    sql: ${TABLE}.Shipping_PricingProcedure_KALSP ;;
  }

  dimension: shipping_processing_time_for_the_entire_document {
    hidden: yes
    type: number
    sql: ${TABLE}.ShippingProcessingTimeForTheEntireDocument_VBEAK ;;
  }

  dimension: shipping_type {
    hidden: yes
    type: string
    sql: ${TABLE}.ShippingType_VSART ;;
  }

  dimension: short_text_for_sales_order_item {
    hidden: yes
    type: string
    sql: ${TABLE}.ShortTextForSalesOrderItem_ARKTX ;;
  }

  dimension: sold_to_party {
    hidden: yes
    type: string
    sql: ${TABLE}.SoldToParty_KUNAG ;;
  }

  dimension: spe_indicator_if_redirecting_has_occured {
    hidden: yes
    type: string
    sql: ${TABLE}.SpeIndicatorIfRedirectingHasOccured_SPE_RED_IND ;;
  }

  dimension: special_processing_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecialProcessingIndicator_SDABW ;;
  }

  dimension: special_stock_indicator_for_physical_stock_transfer {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecialStockIndicatorForPhysicalStockTransfer_UMSOK ;;
  }

  dimension: special_stock_indicator {
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

  dimension: specification_for_issuing_valuated_stock_in_transit {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecificationForIssuingValuatedStockInTransit_SITKZ ;;
  }

  dimension: split_to_warehouse_number_required {
    hidden: yes
    type: string
    sql: ${TABLE}.SplitToWarehouseNumberRequired_LISPL ;;
  }

  dimension: staging_area_for_warehouse_complex_hdr {
    hidden: yes
    type: string
    sql: ${TABLE}.StagingAreaForWarehouseComplexHdr_LGBZO ;;
  }

  dimension: staging_area_for_warehouse_complex {
    hidden: yes
    type: string
    sql: ${TABLE}.StagingAreaForWarehouseComplex_LGBZO ;;
  }

  dimension: statistical_values {
    hidden: yes
    type: string
    sql: ${TABLE}.StatisticalValues_KOWRR ;;
  }

  dimension: statistics_currency {
    hidden: yes
    type: string
    sql: ${TABLE}.StatisticsCurrency_STWAE ;;
  }

  dimension_group: statistics {
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

  dimension: status_of_quality_inspection_for_returns_deliveries {
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

  dimension: stock_determination_rule {
    hidden: yes
    type: string
    sql: ${TABLE}.StockDeterminationRule_RULES ;;
  }

  dimension: stock_segment {
    hidden: yes
    type: string
    sql: ${TABLE}.StockSegment_SGT_SCAT ;;
  }

  dimension: stock_transfertransfer_posting {
    hidden: yes
    type: string
    sql: ${TABLE}.StockTransfertransferPosting_KZUML ;;
  }

  dimension: stock_type {
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

  dimension: storage_location{
    hidden: yes
    type: string
    sql: ${TABLE}.StorageLocation_LGORT ;;
  }

  dimension: storage_type {
    hidden: yes
    type: string
    sql: ${TABLE}.StorageType_LGTYP ;;
  }

  dimension: structure_of_items_that_are_delivered_together {
    hidden: yes
    type: string
    sql: ${TABLE}.StructureOfItemsThatAreDeliveredTogether_SPE_STRUC ;;
  }

  dimension: subsequent_movement_type {
    hidden: yes
    type: string
    sql: ${TABLE}.SubsequentMovementType_FOBWA ;;
  }

  dimension: subtotal1_from_pricing_procedure_for_condition {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal1FromPricingProcedureForCondition_KZWI1 ;;
  }

  dimension: subtotal2_from_pricing_procedure_for_condition {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal2FromPricingProcedureForCondition_KZWI2 ;;
  }

  dimension: subtotal3_from_pricing_procedure_for_condition {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal3FromPricingProcedureForCondition_KZWI3 ;;
  }

  dimension: subtotal4_from_pricing_procedure_for_condition {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal4FromPricingProcedureForCondition_KZWI4 ;;
  }

  dimension: subtotal5_from_pricing_procedure_for_condition {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal5FromPricingProcedureForCondition_KZWI5 ;;
  }

  dimension: subtotal6_from_pricing_procedure_for_condition {
    type: number
    hidden: yes
    sql: ${TABLE}.Subtotal6FromPricingProcedureForCondition_KZWI6 ;;
  }

  dimension: summing_up_of_requirements {
    hidden: yes
    type: string
    sql: ${TABLE}.SummingUpOfRequirements_SUMBD ;;
  }

  dimension: tax_law_icms {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxLaw_Icms_J_1BTAXLW1 ;;
  }

  dimension: tax_law_ipi {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxLaw_Ipi_J_1BTAXLW2 ;;
  }

  dimension: temporary_change_of_storage_locations_in_delivery {
    hidden: yes
    type: string
    sql: ${TABLE}.TemporaryChangeOfStorageLocationsInDelivery_STGE_LOC_CHANGE ;;
  }

  dimension_group: time_of_delivery{
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
    sql: ${TABLE}.TimeOfDelivery_LFUHR ;;
  }

  dimension_group: oods_issue_local {
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

  dimension_group: goods_issue {
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
    sql: ${TABLE}.TimeOfGoodsIssue_WAUHR ;;
  }

  dimension: time_segment_exists {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeSegmentExists_TSEGFL ;;
  }

  dimension: time_zone_of_delivering_location {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeZoneOfDeliveringLocation_TZONIS ;;
  }

  dimension: time_zone_of_recipient_location {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeZoneOfRecipientLocation_TZONRC ;;
  }

  dimension: time_zone {
    hidden: yes
    type: string
    sql: ${TABLE}.TimeZone_SPE_WAZONE_IST ;;
  }

  dimension: total_number_of_packages_in_delivery {
    hidden: yes
    type: string
    sql: ${TABLE}.TotalNumberOfPackagesInDelivery_ANZPK ;;
  }

  dimension: total_weight {
    hidden: yes
    type: number
    sql: ${TABLE}.TotalWeight_BTGEW ;;
  }

  dimension: transaction_code {
    hidden: yes
    type: string
    sql: ${TABLE}.TransactionCode_TCODE ;;
  }

  dimension: transaction_number {
    hidden: yes
    type: string
    sql: ${TABLE}.TransactionNumber_FSH_TRANSACTION ;;
  }

  dimension: transaction_number_hdr {
    hidden: yes
    type: string
    sql: ${TABLE}.TransactionNumberHdr_FSH_TRANSACTION ;;
  }

  dimension_group: transp_planning{
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

  dimension: transportation_group_hdr {
    hidden: yes
    type: string
    sql: ${TABLE}.TransportationGroupHdr_TRAGR ;;
  }

  dimension: transportation_group {
    hidden: yes
    type: string
    sql: ${TABLE}.TransportationGroup_TRAGR ;;
  }

  dimension_group: transportation_planning {
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

  dimension: type_of_external_identification {
    hidden: yes
    type: string
    sql: ${TABLE}.TypeOfExternalIdentification_SPE_LIFEX_TYPE ;;
  }

  dimension: type_of_preceding_document_in_central_system {
    hidden: yes
    type: string
    sql: ${TABLE}.TypeOfPrecedingDocumentInCentralSystem_RFVGTYP ;;
  }

  dimension: underdelivery_tolerance_limit {
    hidden: yes
    type: number
    sql: ${TABLE}.UnderdeliveryToleranceLimit_UNTTO ;;
  }

  dimension: units_of_measure_usage {
    hidden: yes
    type: string
    sql: ${TABLE}.UnitsOfMeasureUsage_KZWSO ;;
  }

  dimension: unloading_point {
    hidden: yes
    type: string
    sql: ${TABLE}.UnloadingPoint_ABLAD ;;
  }

  dimension: update_group_for_statistics_hdr {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateGroupForStatisticsHdr_STAFO ;;
  }

  dimension: update_group_for_statistics_update {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateGroupForStatisticsUpdate_STAFO ;;
  }

  dimension: update_indicator_for_delivery_document_flow {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateIndicatorForDeliveryDocumentFlow_UPFLU ;;
  }

  dimension: usage_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.UsageIndicator_ABRVW ;;
  }

  dimension: valuation_of_special_stock {
    hidden: yes
    type: string
    sql: ${TABLE}.ValuationOfSpecialStock_KZBWS ;;
  }

  dimension: valuation_type {
    hidden: yes
    type: string
    sql: ${TABLE}.ValuationType_BWTAR ;;
  }

  dimension: valuation_type_of_transfer_batch {
    hidden: yes
    type: string
    sql: ${TABLE}.ValuationTypeOfTransferBatch_UMBAR ;;
  }

  dimension: value_added_services_customer_group {
    hidden: yes
    type: string
    sql: ${TABLE}.ValueAddedServicesCustomerGroup_FSH_VAS_CG ;;
  }

  dimension: value_contract_item {
    hidden: yes
    type: string
    sql: ${TABLE}.ValueContractItem_WKTPS ;;
  }

  dimension: value_contract_no {
    hidden: yes
    type: string
    sql: ${TABLE}.ValueContractNo_WKTNR ;;
  }

  dimension: variable_shipping_processing_time_in_days {
    hidden: yes
    type: number
    sql: ${TABLE}.VariableShippingProcessingTimeInDays_VBEAV ;;
  }

  dimension: vas_relevant {
    hidden: yes
    type: string
    sql: ${TABLE}.VasRelevant_FSH_VAS_REL ;;
  }

  dimension: vendor_batch_number {
    hidden: yes
    type: string
    sql: ${TABLE}.VendorBatchNumber_LICHN ;;
  }

  dimension: vendors_account_number {
    hidden: yes
    type: string
    sql: ${TABLE}.VendorsAccountNumber_LIFNR ;;
  }

  dimension: volume_hdr {
    hidden: yes
    type: number
    sql: ${TABLE}.VolumeHdr_VOLUM ;;
  }

  dimension: volume_unit_hdr {
    hidden: yes
    type: string
    sql: ${TABLE}.VolumeUnitHdr_VOLEH ;;
  }

  dimension: volume_unit_kcvoleh {
    hidden: yes
    type: string
    sql: ${TABLE}.VolumeUnit_KCVOLEH ;;
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

  dimension: warehouse_number {
    hidden: yes
    type: string
    sql: ${TABLE}.WarehouseNumber_LGNUM ;;
  }

  dimension: warehouse_number_warehouse_complex {
    hidden: yes
    type: string
    sql: ${TABLE}.WarehouseNumberWarehouseComplex_LGNUM ;;
  }

  dimension: weight_group_for_delivery {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightGroupForDelivery__GRULG ;;
  }

  dimension: weight_unit {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightUnit_GEWEI ;;
  }

  dimension: weight_unit_hdr {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightUnitHdr_GEWEI ;;
  }

  dimension: weight_unit_kcgewei {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightUnit_KCGEWEI ;;
  }

  dimension: withdrawal_sequence_group_for_stocks {
    hidden: yes
    type: string
    sql: ${TABLE}.WithdrawalSequenceGroupForStocks_EPRIO ;;
  }

  dimension: work_breakdown_structure_element_wbs_element {
    hidden: yes
    type: string
    sql: ${TABLE}.WorkBreakdownStructureElement__wbsElement___PS_PSP_PNR ;;
  }

  dimension: worldwide_unique_key_for_likp_vbeln {
    hidden: yes
    type: string
    sql: ${TABLE}.WorldwideUniqueKeyForLikpVbeln_HANDLE ;;
  }

  dimension: worldwide_unique_key_for_lips {
    hidden: yes
    type: string
    sql: ${TABLE}.WorldwideUniqueKeyForLips_HANDLE ;;
  }

  measure: count {
    type: count
    drill_fields: [deliveries_details*]
  }

  measure: return_count {
    type: count
    filters: [is_return: "Yes"]
    drill_fields: [deliveries_details*]
  }

  measure: delivery_return_percentage {
    type: number
    sql: ${return_count}/NULLIF(${count}-${return_count},0) ;;
    value_format_name: percent_2
    drill_fields: [deliveries_details*]
  }

  measure: total_actual_quantity_delivered {
    type: sum
    sql: ${actual_quantity_delivered_in_stockkeeping_units} ;;
    # html: <a href="#drillmenu" target="_self"> @{BigNumbers_format};;
    html: <a href="#drillmenu" target="_self">
    {% if value < 0 %}
    {% assign abs_value = value | times: -1.0 %}
    {% assign pos_neg = '-' %}
    {% else %}
    {% assign abs_value = value | times: 1.0 %}
    {% assign pos_neg = '' %}
    {% endif %}

    {% if abs_value >=1000000000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000000000.0 | round: 2 }}B
    {% elsif abs_value >=1000000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000000.0 | round: 2 }}M
    {% elsif abs_value >=1000 %}
    {{pos_neg}}{{ abs_value | divided_by: 1000.0 | round: 2 }}K
    {% else %}
    {{pos_neg}}{{ abs_value }}
    {% endif %}
    ;;
    drill_fields: [deliveries_details*]
  }

  set: deliveries_details {
    fields: [sales_orders.sales_document,customers_md.customer_name,planned_goods_movement_date,actual_goods_movement_date, material_md.material_name, is_return,total_actual_quantity_delivered ]
  }

}
