view: sdstatus {
  sql_table_name: `SAP_REPORTING.SDStatus`
    ;;

  dimension: allocation_status_of_a_sales_document_item_fsh_ar_stat_itm {
    type: string
    sql: ${TABLE}.AllocationStatusOfASalesDocumentItem_FSH_AR_STAT_ITM ;;
  }

  dimension: at_least_one_of_id_items_not_yet_complete_hdals {
    type: string
    sql: ${TABLE}.AtLeastOneOfIdItemsNotYetComplete_HDALS ;;
  }

  dimension: billing_block_status_for_items_fssta {
    type: string
    sql: ${TABLE}.BillingBlockStatusForItems_FSSTA ;;
  }

  dimension: billing_status {
    type: string
    sql: ${TABLE}.Billing_Status ;;
  }

  dimension: billing_status_fksak {
    type: string
    sql: ${TABLE}.BillingStatus_FKSAK ;;
  }

  dimension: billing_status_fkstk {
    type: string
    sql: ${TABLE}.BillingStatus_FKSTK ;;
  }

  dimension: billing_status_for_order_fksaa {
    type: string
    sql: ${TABLE}.BillingStatusForOrder_FKSAA ;;
  }

  dimension: billing_status_of_delivery_fksta {
    type: string
    sql: ${TABLE}.BillingStatusOfDelivery_FKSTA ;;
  }

  dimension: billing_totals_status_for_intercompany_billing_fkivk {
    type: string
    sql: ${TABLE}.BillingTotalsStatusForIntercompanyBilling_FKIVK ;;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: confirmation_status_bestk {
    type: string
    sql: ${TABLE}.ConfirmationStatus_BESTK ;;
  }

  dimension: confirmation_status_of_document_item_besta {
    type: string
    sql: ${TABLE}.ConfirmationStatusOfDocumentItem_BESTA ;;
  }

  dimension: confirmation_status_of_pickingputaway_koqua {
    type: string
    sql: ${TABLE}.ConfirmationStatusOfPickingputaway_KOQUA ;;
  }

  dimension: credit_check_data_is_obsolete_cmpsm {
    type: string
    sql: ${TABLE}.CreditCheckDataIsObsolete_CMPSM ;;
  }

  dimension: custmer_reserves4_header_status_uvk04 {
    type: string
    sql: ${TABLE}.CustmerReserves4_HeaderStatus_UVK04 ;;
  }

  dimension: customer_reserves1_header_status_uvk01 {
    type: string
    sql: ${TABLE}.CustomerReserves1_HeaderStatus_UVK01 ;;
  }

  dimension: customer_reserves1_item_status_uvp01 {
    type: string
    sql: ${TABLE}.CustomerReserves1_ItemStatus_UVP01 ;;
  }

  dimension: customer_reserves1_sum_of_all_items_uvs01 {
    type: string
    sql: ${TABLE}.CustomerReserves1_SumOfAllItems_UVS01 ;;
  }

  dimension: customer_reserves2_header_status_uvk02 {
    type: string
    sql: ${TABLE}.CustomerReserves2_HeaderStatus_UVK02 ;;
  }

  dimension: customer_reserves2_item_status_uvp02 {
    type: string
    sql: ${TABLE}.CustomerReserves2_ItemStatus_UVP02 ;;
  }

  dimension: customer_reserves2_sum_of_all_items_uvs02 {
    type: string
    sql: ${TABLE}.CustomerReserves2_SumOfAllItems_UVS02 ;;
  }

  dimension: customer_reserves3_header_status_uvk03 {
    type: string
    sql: ${TABLE}.CustomerReserves3_HeaderStatus_UVK03 ;;
  }

  dimension: customer_reserves3_sum_of_all_items_uvs03 {
    type: string
    sql: ${TABLE}.CustomerReserves3_SumOfAllItems_UVS03 ;;
  }

  dimension: customer_reserves4_sum_of_all_items_uvs04 {
    type: string
    sql: ${TABLE}.CustomerReserves4_SumOfAllItems_UVS04 ;;
  }

  dimension: customer_reserves5_header_status_uvk05 {
    type: string
    sql: ${TABLE}.CustomerReserves5_HeaderStatus_UVK05 ;;
  }

  dimension: customer_reserves5_item_status_uvp05 {
    type: string
    sql: ${TABLE}.CustomerReserves5_ItemStatus_UVP05 ;;
  }

  dimension: customer_reserves5_sum_of_all_items_uvs05 {
    type: string
    sql: ${TABLE}.CustomerReserves5_SumOfAllItems_UVS05 ;;
  }

  dimension_group: date_of_last_change_aedat {
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

  dimension: decentralized_whse_processing_vlstp {
    type: string
    sql: ${TABLE}.DecentralizedWhseProcessing_VLSTP ;;
  }

  dimension: delay_status_dcsta {
    type: string
    sql: ${TABLE}.DelayStatus_DCSTA ;;
  }

  dimension: delay_status_dcstk {
    type: string
    sql: ${TABLE}.DelayStatus_DCSTK ;;
  }

  dimension: delivery_block_status_for_item_lssta {
    type: string
    sql: ${TABLE}.DeliveryBlockStatusForItem_LSSTA ;;
  }

  dimension: delivery_status {
    type: string
    sql: ${TABLE}.Delivery_Status ;;
  }

  dimension: delivery_status_lfsta {
    type: string
    sql: ${TABLE}.DeliveryStatus_LFSTA ;;
  }

  dimension: delivery_status_lfstk {
    type: string
    sql: ${TABLE}.DeliveryStatus_LFSTK ;;
  }

  dimension: distribution_status_vlstk {
    type: string
    sql: ${TABLE}.DistributionStatus_VLSTK ;;
  }

  dimension: document_is_incomplete_with_respect_to_pricing_uvprs {
    type: string
    sql: ${TABLE}.DocumentIsIncompleteWithRespectToPricing_UVPRS ;;
  }

  dimension: extension_of_sd_document_category_vbtyp_ext {
    type: string
    sql: ${TABLE}.ExtensionOfSdDocumentCategory_VBTYP_EXT ;;
  }

  dimension: general_incompletion_status_of_item_uvall {
    type: string
    sql: ${TABLE}.GeneralIncompletionStatusOfItem_UVALL ;;
  }

  dimension: general_incompletion_status_of_the_header_uvall {
    type: string
    sql: ${TABLE}.GeneralIncompletionStatusOfTheHeader_UVALL ;;
  }

  dimension: goods_movement_status_wbsta {
    type: string
    sql: ${TABLE}.GoodsMovementStatus_WBSTA ;;
  }

  dimension: handling_unit_placed_in_stock_vestk {
    type: string
    sql: ${TABLE}.HandlingUnitPlacedInStock_VESTK ;;
  }

  dimension: header_incomplete_status_for_packaging_uvpak {
    type: string
    sql: ${TABLE}.HeaderIncompleteStatusForPackaging_UVPAK ;;
  }

  dimension: header_incomplete_status_for_pickingputaway_uvpik {
    type: string
    sql: ${TABLE}.HeaderIncompleteStatusForPickingputaway_UVPIK ;;
  }

  dimension: header_incompletion_status_concerning_delivery_uvvlk {
    type: string
    sql: ${TABLE}.HeaderIncompletionStatusConcerningDelivery_UVVLK ;;
  }

  dimension: header_incompletion_status_with_respect_to_billing_uvfak {
    type: string
    sql: ${TABLE}.HeaderIncompletionStatusWithRespectToBilling_UVFAK ;;
  }

  dimension: inbound_delivery_header_not_yet_complete_hdall {
    type: string
    sql: ${TABLE}.InboundDeliveryHeaderNotYetComplete_HDALL ;;
  }

  dimension: inbound_delivery_item_not_yet_complete_on_hold_hdall {
    type: string
    sql: ${TABLE}.InboundDeliveryItemNotYetComplete__onHold___HDALL ;;
  }

  dimension: incomplete_status_of_item_for_packaging_uvpak {
    type: string
    sql: ${TABLE}.IncompleteStatusOfItemForPackaging_UVPAK ;;
  }

  dimension: incomplete_status_of_item_for_pickingputaway_uvpik {
    type: string
    sql: ${TABLE}.IncompleteStatusOfItemForPickingputaway_UVPIK ;;
  }

  dimension: incomplete_status_of_item_regarding_goods_issue_uvwak {
    type: string
    sql: ${TABLE}.IncompleteStatusOfItemRegardingGoodsIssue_UVWAK ;;
  }

  dimension: incompletion_status_of_the_item_with_regard_to_delivery_uvvlk {
    type: string
    sql: ${TABLE}.IncompletionStatusOfTheItemWithRegardToDelivery_UVVLK ;;
  }

  dimension: indicator_document_preselected_for_archiving_block {
    type: string
    sql: ${TABLE}.Indicator_DocumentPreselectedForArchiving_BLOCK ;;
  }

  dimension: indicator_stockable_type_switched_into_standard_product_ltsps {
    type: string
    sql: ${TABLE}.Indicator_StockableTypeSwitchedIntoStandardProduct_LTSPS ;;
  }

  dimension: intercompany_billing_status_fkivp {
    type: string
    sql: ${TABLE}.IntercompanyBillingStatus_FKIVP ;;
  }

  dimension: invoice_list_status_of_billing_document_relik {
    type: string
    sql: ${TABLE}.InvoiceListStatusOfBillingDocument_RELIK ;;
  }

  dimension: item_incompletion_status_with_respect_to_billing_uvfak {
    type: string
    sql: ${TABLE}.ItemIncompletionStatusWithRespectToBilling_UVFAK ;;
  }

  dimension: item_number_of_the_sd_document_posnr {
    type: string
    sql: ${TABLE}.ItemNumberOfTheSdDocument_POSNR ;;
  }

  dimension: item_reserves3_item_status_uvp03 {
    type: string
    sql: ${TABLE}.ItemReserves3_ItemStatus_UVP03 ;;
  }

  dimension: item_reserves4_item_status_uvp04 {
    type: string
    sql: ${TABLE}.ItemReserves4_ItemStatus_UVP04 ;;
  }

  dimension: manual_completion_of_contract_hdr_manek {
    type: string
    sql: ${TABLE}.ManualCompletionOfContractHdr_MANEK ;;
  }

  dimension: manual_completion_of_contract_manek {
    type: string
    sql: ${TABLE}.ManualCompletionOfContract_MANEK ;;
  }

  dimension: overall_allocation_status_fsh_ar_stat_hdr {
    type: string
    sql: ${TABLE}.OverallAllocationStatus_FSH_AR_STAT_HDR ;;
  }

  dimension: overall_billing_block_status_fsstk {
    type: string
    sql: ${TABLE}.OverallBillingBlockStatus_FSSTK ;;
  }

  dimension: overall_blocked_status_spstg {
    type: string
    sql: ${TABLE}.OverallBlockedStatus_SPSTG ;;
  }

  dimension: overall_delivery_block_status_lsstk {
    type: string
    sql: ${TABLE}.OverallDeliveryBlockStatus_LSSTK ;;
  }

  dimension: overall_delivery_status_for_all_items_lfgsk {
    type: string
    sql: ${TABLE}.OverallDeliveryStatusForAllItems_LFGSK ;;
  }

  dimension: overall_delivery_status_of_the_item_lfgsa {
    type: string
    sql: ${TABLE}.OverallDeliveryStatusOfTheItem_LFGSA ;;
  }

  dimension: overall_packing_status_of_all_items_pkstk {
    type: string
    sql: ${TABLE}.OverallPackingStatusOfAllItems_PKSTK ;;
  }

  dimension: overall_picking_putaway_status_kostk {
    type: string
    sql: ${TABLE}.OverallPickingPutawayStatus_KOSTK ;;
  }

  dimension: overall_processing_status_of_document_gbstk {
    type: string
    sql: ${TABLE}.OverallProcessingStatusOfDocument_GBSTK ;;
  }

  dimension: overall_processing_status_of_the_sd_document_item_gbsta {
    type: string
    sql: ${TABLE}.OverallProcessingStatusOfTheSdDocumentItem_GBSTA ;;
  }

  dimension: overall_rejection_status_of_all_document_items_abstk {
    type: string
    sql: ${TABLE}.OverallRejectionStatusOfAllDocumentItems_ABSTK ;;
  }

  dimension: overall_status_of_credit_checks_cmgst {
    type: string
    sql: ${TABLE}.OverallStatusOfCreditChecks_CMGST ;;
  }

  dimension: overall_status_of_reference_rfgsa {
    type: string
    sql: ${TABLE}.OverallStatusOfReference_RFGSA ;;
  }

  dimension: overall_status_of_warehouse_management_activities_lvstk {
    type: string
    sql: ${TABLE}.OverallStatusOfWarehouseManagementActivities_LVSTK ;;
  }

  dimension: packing_status_of_item_pksta {
    type: string
    sql: ${TABLE}.PackingStatusOfItem_PKSTA ;;
  }

  dimension: picking_statusputaway_status_kosta {
    type: string
    sql: ${TABLE}.PickingStatusputawayStatus_KOSTA ;;
  }

  dimension: pod_status_on_header_level_pdstk {
    type: string
    sql: ${TABLE}.PodStatusOnHeaderLevel_PDSTK ;;
  }

  dimension: pod_status_on_item_level_pdsta {
    type: string
    sql: ${TABLE}.PodStatusOnItemLevel_PDSTA ;;
  }

  dimension: post_header_incomplete_status_for_goods_movement_uvwak {
    type: string
    sql: ${TABLE}.PostHeaderIncompleteStatusForGoodsMovement_UVWAK ;;
  }

  dimension: posting_status_of_billing_document_buchk {
    type: string
    sql: ${TABLE}.PostingStatusOfBillingDocument_BUCHK ;;
  }

  dimension: pricing_for_item_is_incomplete_uvprs {
    type: string
    sql: ${TABLE}.PricingForItemIsIncomplete_UVPRS ;;
  }

  dimension: reference_document_header_status_rfstk {
    type: string
    sql: ${TABLE}.ReferenceDocumentHeaderStatus_RFSTK ;;
  }

  dimension: reference_status_rfsta {
    type: string
    sql: ${TABLE}.ReferenceStatus_RFSTA ;;
  }

  dimension: rejection_status_for_sd_item_absta {
    type: string
    sql: ${TABLE}.RejectionStatusForSdItem_ABSTA ;;
  }

  dimension: revenue_determination_status_hdr_rrsta {
    type: string
    sql: ${TABLE}.RevenueDeterminationStatusHdr_RRSTA ;;
  }

  dimension: revenue_determination_status_rrsta {
    type: string
    sql: ${TABLE}.RevenueDeterminationStatus_RRSTA ;;
  }

  dimension: sap_release_saprl {
    type: string
    sql: ${TABLE}.SapRelease_SAPRL ;;
  }

  dimension: sd_document_category_vbtyp {
    type: string
    sql: ${TABLE}.SdDocumentCategory_VBTYP ;;
  }

  dimension: sd_document_object_vbobj {
    type: string
    sql: ${TABLE}.SdDocumentObject_VBOBJ ;;
  }

  dimension: sddocument_number_vbeln {
    type: string
    sql: ${TABLE}.SDDocumentNumber_VBELN ;;
  }

  dimension: status_funds_management_fmstk {
    type: string
    sql: ${TABLE}.StatusFundsManagement_FMSTK ;;
  }

  dimension: status_of_credit_check_against_customer_review_date_cmpse {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstCustomerReviewDate_CMPSE ;;
  }

  dimension: status_of_credit_check_against_export_credit_insurance_cmppj {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstExportCreditInsurance_CMPPJ ;;
  }

  dimension: status_of_credit_check_against_export_credit_insurance_cmpsj {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstExportCreditInsurance_CMPSJ ;;
  }

  dimension: status_of_credit_check_against_financial_document_cmppi {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstFinancialDocument_CMPPI ;;
  }

  dimension: status_of_credit_check_against_financial_document_cmpsi {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstFinancialDocument_CMPSI ;;
  }

  dimension: status_of_credit_check_against_highest_dunning_level_cmpsh {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstHighestDunningLevel_CMPSH ;;
  }

  dimension: status_of_credit_check_against_maximum_document_value_cmpsc {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstMaximumDocumentValue_CMPSC ;;
  }

  dimension: status_of_credit_check_against_oldest_open_items_cmpsg {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstOldestOpenItems_CMPSG ;;
  }

  dimension: status_of_credit_check_against_open_items_due_cmpsf {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstOpenItemsDue_CMPSF ;;
  }

  dimension: status_of_credit_check_against_payment_card_authorization_cmpsk {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstPaymentCardAuthorization_CMPSK ;;
  }

  dimension: status_of_credit_check_against_terms_of_payment_cmpsd {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckAgainstTermsOfPayment_CMPSD ;;
  }

  dimension: status_of_credit_check_for_customer_reserve1_cmps0 {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckForCustomerReserve1_CMPS0 ;;
  }

  dimension: status_of_credit_check_for_customer_reserve2_cmps1 {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckForCustomerReserve2_CMPS1 ;;
  }

  dimension: status_of_credit_check_for_customer_reserve3_cmps2 {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckForCustomerReserve3_CMPS2 ;;
  }

  dimension: status_of_credit_check_of_reserves4_cmpsl {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckOfReserves4_CMPSL ;;
  }

  dimension: status_of_credit_check_sap_credit_management_cmps_cm {
    type: string
    sql: ${TABLE}.StatusOfCreditCheckSapCreditManagement_CMPS_CM ;;
  }

  dimension: status_of_dynamic_credit_limit_check_in_the_credit_horizon_cmpsb {
    type: string
    sql: ${TABLE}.StatusOfDynamicCreditLimitCheckInTheCreditHorizon_CMPSB ;;
  }

  dimension: status_of_pick_confirmation_koquk {
    type: string
    sql: ${TABLE}.StatusOfPickConfirmation_KOQUK ;;
  }

  dimension: status_of_sales_order_item_mill_vs_vssta {
    type: string
    sql: ${TABLE}.StatusOfSalesOrderItem_MILL_VS_VSSTA ;;
  }

  dimension: status_of_static_credit_limit_check_cmpsa {
    type: string
    sql: ${TABLE}.StatusOfStaticCreditLimitCheck_CMPSA ;;
  }

  dimension: status_of_technical_error_sap_credit_management_cmps_te {
    type: string
    sql: ${TABLE}.StatusOfTechnicalErrorSapCreditManagement_CMPS_TE ;;
  }

  dimension: status_of_warehouse_management_activities_lvsta {
    type: string
    sql: ${TABLE}.StatusOfWarehouseManagementActivities_LVSTA ;;
  }

  dimension: temporary_inbound_delivery_spe_tmpid {
    type: string
    sql: ${TABLE}.TemporaryInboundDelivery_SPE_TMPID ;;
  }

  dimension: total_goods_movement_status_wbstk {
    type: string
    sql: ${TABLE}.TotalGoodsMovementStatus_WBSTK ;;
  }

  dimension: total_incomplete_status_of_all_items_post_goods_movement_uvwas {
    type: string
    sql: ${TABLE}.TotalIncompleteStatusOfAllItems_PostGoodsMovement_UVWAS ;;
  }

  dimension: total_incompletion_status_of_all_items_billing_uvfas {
    type: string
    sql: ${TABLE}.TotalIncompletionStatusOfAllItems_Billing_UVFAS ;;
  }

  dimension: total_incompletion_status_of_all_items_delivery_uvvls {
    type: string
    sql: ${TABLE}.TotalIncompletionStatusOfAllItems_Delivery_UVVLS ;;
  }

  dimension: total_incompletion_status_of_all_items_in_general_uvals {
    type: string
    sql: ${TABLE}.TotalIncompletionStatusOfAllItemsInGeneral_UVALS ;;
  }

  dimension: total_reference_status_of_all_items_rfgsk {
    type: string
    sql: ${TABLE}.TotalReferenceStatusOfAllItems_RFGSK ;;
  }

  dimension: totals_incomplete_status_for_all_items_packaging_uvpas {
    type: string
    sql: ${TABLE}.TotalsIncompleteStatusForAllItems_Packaging_UVPAS ;;
  }

  dimension: totals_incomplete_status_for_all_items_picking_uvpis {
    type: string
    sql: ${TABLE}.TotalsIncompleteStatusForAllItems_Picking_UVPIS ;;
  }

  dimension: transportation_planning_status_trsta {
    type: string
    sql: ${TABLE}.TransportationPlanningStatus_TRSTA ;;
  }

  dimension: unused_uvgek {
    type: string
    sql: ${TABLE}.Unused_UVGEK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
