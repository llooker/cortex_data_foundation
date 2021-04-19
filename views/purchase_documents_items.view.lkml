view: purchase_documents_items {
  sql_table_name: `SAP_REPORTING.PurchaseDocumentsItems`
    ;;

  dimension: acceptance_at_origin_weora {
    type: string
    sql: ${TABLE}.AcceptanceAtOrigin_WEORA ;;
  }

  dimension: acceptance_period_excpe {
    type: string
    sql: ${TABLE}.AcceptancePeriod_EXCPE ;;
  }

  dimension: account_assignment_category_knttp {
    type: string
    sql: ${TABLE}.AccountAssignmentCategory_KNTTP ;;
  }

  dimension: advance_procurement_vorab {
    type: string
    sql: ${TABLE}.Advanceprocurement_VORAB ;;
  }

  dimension: advice_code_advcode {
    type: string
    sql: ${TABLE}.AdviceCode_ADVCODE ;;
  }

  dimension: agreed_cumulative_quantity_abftz {
    type: number
    sql: ${TABLE}.AgreedCumulativeQuantity_ABFTZ ;;
  }

  dimension: allocation_table_number_abeln {
    type: string
    sql: ${TABLE}.AllocationTableNumber_ABELN ;;
  }

  dimension: apoas_planning_system_apoms {
    type: string
    sql: ${TABLE}.APOasPlanningSystem_APOMS ;;
  }

  dimension: assumed_business_area_of_the_business_partner_ko_pargb {
    type: string
    sql: ${TABLE}.assumedbusinessareaofthebusinesspartner_KO_PARGB ;;
  }

  dimension: base_unit_of_measure_lmein {
    type: string
    sql: ${TABLE}.BaseUnitofMeasure_LMEIN ;;
  }

  dimension: billing_relevance_crm_spe_crm_fkrel {
    type: string
    sql: ${TABLE}.BillingRelevanceCRM_SPE_CRM_FKREL ;;
  }

  dimension: blocking_reason_id_blk_reason_id {
    type: string
    sql: ${TABLE}.BlockingReasonID_BLK_REASON_ID ;;
  }

  dimension: blocking_reason_text_blk_reason_txt {
    type: string
    sql: ${TABLE}.BlockingReasonText_BLK_REASON_TXT ;;
  }

  dimension: business_area_reported_to_the_partner_ko_gsber {
    type: string
    sql: ${TABLE}.Businessareareportedtothepartner_KO_GSBER ;;
  }

  dimension: central_contract_item_number_srm_contract_itm {
    type: string
    sql: ${TABLE}.CentralContractItemNumber_SRM_CONTRACT_ITM ;;
  }

  dimension: central_contract_srm_contract_id {
    type: string
    sql: ${TABLE}.CentralContract_SRM_CONTRACT_ID ;;
  }

  dimension: certificate_type_zgtyp {
    type: string
    sql: ${TABLE}.CertificateType_ZGTYP ;;
  }

  dimension_group: change_date_aedat {
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
    sql: ${TABLE}.ChangeDate_AEDAT ;;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: commitment_item_fipos {
    type: string
    sql: ${TABLE}.CommitmentItem_FIPOS ;;
  }

  dimension: company_code_bukrs {
    type: string
    sql: ${TABLE}.CompanyCode_BUKRS ;;
  }

  dimension: condition_group_with_vendor_ekkol {
    type: string
    sql: ${TABLE}.ConditionGroupwithVendor_EKKOL ;;
  }

  dimension: conditions_for_item_although_no_invoice_xconditions {
    type: string
    sql: ${TABLE}.Conditionsforitemalthoughnoinvoice_XCONDITIONS ;;
  }

  dimension: configuration_changed_chg_srv {
    type: string
    sql: ${TABLE}.Configurationchanged_CHG_SRV ;;
  }

  dimension: confirmation_control_key_bstae {
    type: string
    sql: ${TABLE}.ConfirmationControlKey_BSTAE ;;
  }

  dimension: consumption_posting_kzvbr {
    type: string
    sql: ${TABLE}.ConsumptionPosting_KZVBR ;;
  }

  dimension: control_key_for_quality_management_in_procurement_ssqss {
    type: string
    sql: ${TABLE}.ControlKeyforQualityManagementinProcurement_SSQSS ;;
  }

  dimension: cq_control_type_spe_cq_ctrltype {
    type: string
    sql: ${TABLE}.CQControlType_SPE_CQ_CTRLTYPE ;;
  }

  dimension: crm_reference_order_number_for_tpop_spe_crm_ref_so {
    type: string
    sql: ${TABLE}.CRMReferenceOrderNumberforTPOP_SPE_CRM_REF_SO ;;
  }

  dimension: crm_reference_sales_order_item_number_in_tpop_spe_crm_ref_item {
    type: string
    sql: ${TABLE}.CRMReferenceSalesOrderItemNumberinTPOP_SPE_CRM_REF_ITEM ;;
  }

  dimension: crm_sales_order_item_number_in_tpop_spe_crm_so_item {
    type: string
    sql: ${TABLE}.CRMSalesOrderItemNumberinTPOP_SPE_CRM_SO_ITEM ;;
  }

  dimension: crm_sales_order_number_for_tpop_spe_crm_so {
    type: string
    sql: ${TABLE}.CRMSalesOrderNumberforTPOP_SPE_CRM_SO ;;
  }

  dimension: cross_plant_configurable_material_satnr {
    type: string
    sql: ${TABLE}.CrossPlantConfigurableMaterial_SATNR ;;
  }

  dimension: cumulative_goods_receipts_cqu_sar {
    type: number
    sql: ${TABLE}.CumulativeGoodsReceipts_CQU_SAR ;;
  }

  dimension: currently_not_used_gnetwr {
    type: number
    sql: ${TABLE}.Currentlynotused_GNETWR ;;
  }

  dimension: customer_kunnr {
    type: string
    sql: ${TABLE}.Customer_KUNNR ;;
  }

  dimension: customer_number_disub_kunnr {
    type: string
    sql: ${TABLE}.CustomerNumber_DISUB_KUNNR ;;
  }

  dimension_group: date_of_price_determination_prdat {
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
    sql: ${TABLE}.DateofPriceDetermination_PRDAT ;;
  }

  dimension_group: deadline_for_submissionof_bid_agdat {
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
    sql: ${TABLE}.DeadlineforSubmissionofBid_AGDAT ;;
  }

  dimension: deletion_flag_loekz {
    type: string
    sql: ${TABLE}.DeletionFlag_LOEKZ ;;
  }

  dimension: delivery_completed_flag_elikz {
    type: string
    sql: ${TABLE}.DeliveryCompletedFlag_ELIKZ ;;
  }

  dimension: delivery_dateand_quantity_fixed_fixmg {
    type: string
    sql: ${TABLE}.DeliveryDateandQuantityFixed_FIXMG ;;
  }

  dimension: delivery_type_for_returnsto_vendors_lfret {
    type: string
    sql: ${TABLE}.DeliveryTypeforReturnstoVendors_LFRET ;;
  }

  dimension: denominator_for_conversion_of_order_unit_to_base_unit_umren {
    type: number
    sql: ${TABLE}.DenominatorforConversionofOrderUnittoBaseUnit_UMREN ;;
  }

  dimension: differential_invoicing_diff_invoice {
    type: string
    sql: ${TABLE}.DifferentialInvoicing_DIFF_INVOICE ;;
  }

  dimension: distribution_flag_for_multiple_account_assignment_vrtkz {
    type: string
    sql: ${TABLE}.DistributionFlagformultipleaccountassignment_VRTKZ ;;
  }

  dimension: document_number_ebeln {
    type: string
    sql: ${TABLE}.DocumentNumber_EBELN ;;
  }

  dimension: document_number_for_earmarked_funds_kblnr {
    type: string
    sql: ${TABLE}.DocumentNumberforEarmarkedFunds_KBLNR ;;
  }

  dimension: document_number_of_external_document_ext_rfx_number {
    type: string
    sql: ${TABLE}.DocumentNumberofExternalDocument_EXT_RFX_NUMBER ;;
  }

  dimension: down_payment_flag_dptyp {
    type: string
    sql: ${TABLE}.DownPaymentFlag_DPTYP ;;
  }

  dimension: down_payment_percentage_dppct {
    type: number
    sql: ${TABLE}.DownPaymentPercentage_DPPCT ;;
  }

  dimension: down_payment_in_document_currency_dpamt {
    type: number
    sql: ${TABLE}.DownPaymentinDocumentCurrency_DPAMT ;;
  }

  dimension_group: due_date_for_down_payment_dpdat {
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
    sql: ${TABLE}.DueDateforDownPayment_DPDAT ;;
  }

  dimension: earmarked_funds_document_item_kblpos {
    type: string
    sql: ${TABLE}.EarmarkedFundsDocumentItem_KBLPOS ;;
  }

  dimension: effective_value_of_item_effwr {
    type: number
    sql: ${TABLE}.Effectivevalueofitem_EFFWR ;;
  }

  dimension: estimated_price_flag_schpr {
    type: string
    sql: ${TABLE}.EstimatedPriceFlag_SCHPR ;;
  }

  dimension: evaluated_receipt_settlement_xersy {
    type: string
    sql: ${TABLE}.EvaluatedReceiptSettlement_XERSY ;;
  }

  dimension: ewm_delivery_based_tolerance_check_spe_ewm_dtc {
    type: string
    sql: ${TABLE}.EWMDeliveryBasedToleranceCheck_SPE_EWM_DTC ;;
  }

  dimension: exclusion_in_outline_agreement_item_with_material_class_notkz {
    type: string
    sql: ${TABLE}.ExclusioninOutlineAgreementItemwithMaterialClass_NOTKZ ;;
  }

  dimension: external_hierarchy_category_ehtyp {
    type: string
    sql: ${TABLE}.ExternalHierarchyCategory_EHTYP ;;
  }

  dimension: external_sorting_exsnr {
    type: string
    sql: ${TABLE}.ExternalSorting_EXSNR ;;
  }

  dimension: external_manufacturer_code_name_or_number_emnfr {
    type: string
    sql: ${TABLE}.Externalmanufacturercodenameornumber_EMNFR ;;
  }

  dimension: final_invoice_flag_erekz {
    type: string
    sql: ${TABLE}.FinalInvoiceFlag_EREKZ ;;
  }

  dimension: firm_trade_off_zones_kzstu {
    type: string
    sql: ${TABLE}.FirmTradeOffZones_KZSTU ;;
  }

  dimension: firm_zone_etfz1 {
    type: number
    sql: ${TABLE}.FirmZone_ETFZ1 ;;
  }

  dimension: flag_gr_based_invoice_verification_webre {
    type: string
    sql: ${TABLE}.FlagGRBasedInvoiceVerification_WEBRE ;;
  }

  dimension: flag_item_relevant_to_jit_delivery_schedules_fabkz {
    type: string
    sql: ${TABLE}.FlagItemRelevanttoJITDeliverySchedules_FABKZ ;;
  }

  dimension: flag_print_relevant_schedule_lines_exist_etdrk {
    type: string
    sql: ${TABLE}.FlagPrintrelevantSchedulelinesexist_ETDRK ;;
  }

  dimension: flag_for_gi_based_goods_receipt_wabwe {
    type: string
    sql: ${TABLE}.FlagforGIbasedgoodsreceipt_WABWE ;;
  }

  dimension: flag_for_putting_back_from_grouped_po_document_put_back {
    type: string
    sql: ${TABLE}.FlagforPuttingBackfromGroupedPODocument_PUT_BACK ;;
  }

  dimension: flag_for_service_based_invoice_verification_lebre {
    type: string
    sql: ${TABLE}.FlagforServiceBasedInvoiceVerification_LEBRE ;;
  }

  dimension: fm_budget_period_budget_pd {
    type: string
    sql: ${TABLE}.FMBudgetPeriod_BUDGET_PD ;;
  }

  dimension: functional_area_fkber {
    type: string
    sql: ${TABLE}.FunctionalArea_FKBER ;;
  }

  dimension: fund_geber {
    type: string
    sql: ${TABLE}.Fund_GEBER ;;
  }

  dimension: funds_center_fistl {
    type: string
    sql: ${TABLE}.FundsCenter_FISTL ;;
  }

  dimension: goods_receipt_flag_wepos {
    type: string
    sql: ${TABLE}.GoodsReceiptFlag_WEPOS ;;
  }

  dimension: goods_receipt_non_valuated_weunb {
    type: string
    sql: ${TABLE}.GoodsReceiptNonValuated_WEUNB ;;
  }

  dimension: goods_receipt_processing_time_in_days_webaz {
    type: number
    sql: ${TABLE}.GoodsReceiptProcessingTimeinDays_WEBAZ ;;
  }

  dimension: goods_receipt_reason_code_reason_code {
    type: string
    sql: ${TABLE}.GoodsReceiptReasonCode_REASON_CODE ;;
  }

  dimension: grant_grant_nbr {
    type: string
    sql: ${TABLE}.Grant_GRANT_NBR ;;
  }

  dimension: gross_weight_brgew {
    type: number
    sql: ${TABLE}.GrossWeight_BRGEW ;;
  }

  dimension: gross_order_value_in_po_currency_brtwr {
    type: number
    sql: ${TABLE}.GrossordervalueinPOcurrency_BRTWR ;;
  }

  dimension: higher_level_itemin_purchasing_documents_uebpo {
    type: string
    sql: ${TABLE}.HigherLevelIteminPurchasingDocuments_UEBPO ;;
  }

  dimension: incentive_id_fiscal_incentive_id {
    type: string
    sql: ${TABLE}.IncentiveID_FISCAL_INCENTIVE_ID ;;
  }

  dimension: incoterms1_inco1 {
    type: string
    sql: ${TABLE}.Incoterms1_INCO1 ;;
  }

  dimension: incoterms2_inco2 {
    type: string
    sql: ${TABLE}.Incoterms2_INCO2 ;;
  }

  dimension_group: inflation_index_date_j_1_aidatep {
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
    sql: ${TABLE}.InflationIndexDate_J_1AIDATEP ;;
  }

  dimension: inflation_index_j_1_aindxp {
    type: string
    sql: ${TABLE}.InflationIndex_J_1AINDXP ;;
  }

  dimension: internal_commen_ton_quotation_agmem {
    type: string
    sql: ${TABLE}.InternalCommentonQuotation_AGMEM ;;
  }

  dimension: internal_object_number_cuobj {
    type: string
    sql: ${TABLE}.internalObjectNumber_CUOBJ ;;
  }

  dimension: international_article_number_ean11 {
    type: string
    sql: ${TABLE}.InternationalArticleNumber_EAN11 ;;
  }

  dimension: invoice_receipt_flag_repos {
    type: string
    sql: ${TABLE}.InvoiceReceiptFlag_REPOS ;;
  }

  dimension: invoicing_plan_number_fplnr {
    type: string
    sql: ${TABLE}.Invoicingplannumber_FPLNR ;;
  }

  dimension: issuing_storage_locationfor_stock_transport_order_reslo {
    type: string
    sql: ${TABLE}.IssuingStorageLocationforStockTransportOrder_RESLO ;;
  }

  dimension: item_category_in_purchasing_document_pstyp {
    type: string
    sql: ${TABLE}.ItemCategoryinPurchasingDocument_PSTYP ;;
  }

  dimension: item_does_not_qualify_for_cash_discount_sktof {
    type: string
    sql: ${TABLE}.ItemDoesNotQualifyforCashDiscount_SKTOF ;;
  }

  dimension: item_ebelp {
    type: string
    sql: ${TABLE}.Item_EBELP ;;
  }

  dimension: item_number_length_exlin {
    type: string
    sql: ${TABLE}.ItemNumberLength_EXLIN ;;
  }

  dimension: item_number_of_external_document_ext_rfx_item {
    type: string
    sql: ${TABLE}.ItemNumberofExternalDocument_EXT_RFX_ITEM ;;
  }

  dimension: item_number_of_principal_purchase_agreement_ktpnr {
    type: string
    sql: ${TABLE}.ItemNumberofPrincipalPurchaseAgreement_KTPNR ;;
  }

  dimension: item_number_of_purchase_requisition_bnfpo {
    type: string
    sql: ${TABLE}.ItemNumberofPurchaseRequisition_BNFPO ;;
  }

  dimension: item_number_of_rfq_anfps {
    type: string
    sql: ${TABLE}.ItemNumberofRFQ_ANFPS ;;
  }

  dimension: item_relevant_to_subsequent_settlement_ebonf {
    type: string
    sql: ${TABLE}.ItemRelevanttoSubsequentSettlement_EBONF ;;
  }

  dimension: item_affects_commitments_xoblr {
    type: string
    sql: ${TABLE}.Itemaffectscommitments_XOBLR ;;
  }

  dimension: item_blocked_for_sd_delivery_novet {
    type: string
    sql: ${TABLE}.ItemblockedforSDdelivery_NOVET ;;
  }

  dimension: item_is_statistical_stapo {
    type: string
    sql: ${TABLE}.Itemisstatistical_STAPO ;;
  }

  dimension: item_number_of_allocation_table_abelp {
    type: string
    sql: ${TABLE}.Itemnumberofallocationtable_ABELP ;;
  }

  dimension: item_number_of_the_sd_document_disub_posnr {
    type: string
    sql: ${TABLE}.ItemnumberoftheSDdocument_DISUB_POSNR ;;
  }

  dimension: item_number_of_the_settlement_reservation_arsps {
    type: string
    sql: ${TABLE}.Itemnumberofthesettlementreservation_ARSPS ;;
  }

  dimension: iuid_relevant_iuid_relevant {
    type: string
    sql: ${TABLE}.IUIDRelevant_IUID_RELEVANT ;;
  }

  dimension: kanban_flag_kanba {
    type: string
    sql: ${TABLE}.KanbanFlag_KANBA ;;
  }

  dimension: key_in_source_system_source_key {
    type: string
    sql: ${TABLE}.KeyinSourceSystem_SOURCE_KEY ;;
  }

  dimension: last_changer_system_type_spe_chng_sys {
    type: string
    sql: ${TABLE}.LastChangerSystemType_SPE_CHNG_SYS ;;
  }

  dimension_group: last_transmission_drdat {
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
    sql: ${TABLE}.LastTransmission_DRDAT ;;
  }

  dimension_group: latest_possible_goods_receipt_lewed {
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
    sql: ${TABLE}.LatestPossibleGoodsReceipt_LEWED ;;
  }

  dimension: location_for_a_physical_handover_of_goods_handoverloc {
    type: string
    sql: ${TABLE}.Locationforaphysicalhandoverofgoods_HANDOVERLOC ;;
  }

  dimension: logical_system_ext_rfx_system {
    type: string
    sql: ${TABLE}.LogicalSystem_EXT_RFX_SYSTEM ;;
  }

  dimension: manual_tax_code_reason_manual_tc_reason {
    type: string
    sql: ${TABLE}.ManualTaxCodeReason_MANUAL_TC_REASON ;;
  }

  dimension: manual_address_number_in_purchasing_document_item_adrnr {
    type: string
    sql: ${TABLE}.Manualaddressnumberinpurchasingdocumentitem_ADRNR ;;
  }

  dimension: manufacturer_part_number_mfrpn {
    type: string
    sql: ${TABLE}.ManufacturerPartNumber_MFRPN ;;
  }

  dimension: manufacturer_part_profile_mprof {
    type: string
    sql: ${TABLE}.ManufacturerPartProfile_MPROF ;;
  }

  dimension: material_category_attyp {
    type: string
    sql: ${TABLE}.MaterialCategory_ATTYP ;;
  }

  dimension: material_group_matkl {
    type: string
    sql: ${TABLE}.MaterialGroup_MATKL ;;
  }

  dimension: material_number_ematn {
    type: string
    sql: ${TABLE}.MaterialNumber_EMATN ;;
  }

  dimension: material_number_matnr {
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
  }

  dimension: material_number_vendor_idnlf {
    type: string
    sql: ${TABLE}.MaterialNumberVendor_IDNLF ;;
  }

  dimension: material_type_mtart {
    type: string
    sql: ${TABLE}.MaterialType_MTART ;;
  }

  dimension: material_freight_group_mfrgr {
    type: string
    sql: ${TABLE}.Materialfreightgroup_MFRGR ;;
  }

  dimension: material_ledger_activate_dat_material_level_mlmaa {
    type: string
    sql: ${TABLE}.Materialledgeractivatedatmateriallevel_MLMAA ;;
  }

  dimension: material_qualifies_for_discount_in_kind_nrfhg {
    type: string
    sql: ${TABLE}.Materialqualifiesfordiscountinkind_NRFHG ;;
  }

  dimension: maximum_cumulative_material_go_ahead_quantity_mfzhi {
    type: number
    sql: ${TABLE}.MaximumCumulativeMaterialGoAheadQuantity_MFZHI ;;
  }

  dimension: maximum_cumulative_production_go_ahead_quantity_ffzhi {
    type: number
    sql: ${TABLE}.MaximumCumulativeProductionGoAheadQuantity_FFZHI ;;
  }

  dimension: minimum_remaining_shelf_life_mhdrz {
    type: number
    sql: ${TABLE}.MinimumRemainingShelfLife_MHDRZ ;;
  }

  dimension: mrp_area_berid {
    type: string
    sql: ${TABLE}.MRPArea_BERID ;;
  }

  dimension: name_of_requester_afnam {
    type: string
    sql: ${TABLE}.NameofRequester_AFNAM ;;
  }

  dimension: net_order_value_in_po_currency_netwr {
    type: number
    sql: ${TABLE}.NetOrderValueinPOCurrency_NETWR ;;
  }

  dimension: net_price_netpr {
    type: number
    sql: ${TABLE}.NetPrice_NETPR ;;
  }

  dimension: net_weight_ntgew {
    type: number
    sql: ${TABLE}.NetWeight_NTGEW ;;
  }

  dimension_group: next_forecast_delivery_schedule_transmission_nlabd {
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
    sql: ${TABLE}.NextForecastDeliveryScheduleTransmission_NLABD ;;
  }

  dimension_group: next_jit_delivery_schedule_transmission_nfabd {
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
    sql: ${TABLE}.NextJITDeliveryScheduleTransmission_NFABD ;;
  }

  dimension: no_transmission_of_cumulative_quantities_in_sa_release_spe_cq_nocq {
    type: string
    sql: ${TABLE}.NoTransmissionofCumulativeQuantitiesinSARelease_SPE_CQ_NOCQ ;;
  }

  dimension: no_invoice_for_this_item_although_not_free_of_charge_chg_fplnr {
    type: string
    sql: ${TABLE}.Noinvoiceforthisitemalthoughnotfreeofcharge_CHG_FPLNR ;;
  }

  dimension: non_deductible_input_tax_navnw {
    type: number
    sql: ${TABLE}.Nondeductibleinputtax_NAVNW ;;
  }

  dimension: number_of_daysfor_first_reminder_mahn1 {
    type: number
    sql: ${TABLE}.NumberofDaysforFirstReminder_MAHN1 ;;
  }

  dimension: number_of_daysfor_second_reminder_mahn2 {
    type: number
    sql: ${TABLE}.NumberofDaysforSecondReminder_MAHN2 ;;
  }

  dimension: number_of_daysfor_third_reminder_mahn3 {
    type: number
    sql: ${TABLE}.NumberofDaysforThirdReminder_MAHN3 ;;
  }

  dimension: numberof_points_anzpu {
    type: number
    sql: ${TABLE}.NumberofPoints_ANZPU ;;
  }

  dimension: number_of_principal_purchase_agreement_konnr {
    type: string
    sql: ${TABLE}.NumberofPrincipalPurchaseAgreement_KONNR ;;
  }

  dimension: number_of_purchasing_info_record_infnr {
    type: string
    sql: ${TABLE}.NumberofPurchasingInfoRecord_INFNR ;;
  }

  dimension: number_of_reminders_mahnz {
    type: number
    sql: ${TABLE}.NumberofReminders_MAHNZ ;;
  }

  dimension: number_of_a_manufacturer_mfrnr {
    type: string
    sql: ${TABLE}.NumberofaManufacturer_MFRNR ;;
  }

  dimension: number_of_delivery_address_adrn2 {
    type: string
    sql: ${TABLE}.Numberofdeliveryaddress_ADRN2 ;;
  }

  dimension: number_of_serial_numbers_anzsn {
    type: number
    sql: ${TABLE}.Numberofserialnumbers_ANZSN ;;
  }

  dimension: numerator_for_conversion_of_order_unit_to_base_unit_umrez {
    type: number
    sql: ${TABLE}.NumeratorforConversionofOrderUnittoBaseUnit_UMREZ ;;
  }

  dimension: order_acknowledgment_number_labnr {
    type: string
    sql: ${TABLE}.OrderAcknowledgmentNumber_LABNR ;;
  }

  dimension: order_acknowledgment_requirement_kzabs {
    type: string
    sql: ${TABLE}.OrderAcknowledgmentRequirement_KZABS ;;
  }

  dimension: order_list_item_number_pol_id {
    type: string
    sql: ${TABLE}.OrderListItemNumber_POL_ID ;;
  }

  dimension: order_price_unit_bprme {
    type: string
    sql: ${TABLE}.OrderPriceUnit_BPRME ;;
  }

  dimension: order_unit_denominator_bpumn {
    type: number
    sql: ${TABLE}.OrderUnitDenominator_BPUMN ;;
  }

  dimension: order_unit_numerator_bpumz {
    type: number
    sql: ${TABLE}.OrderUnitNumerator_BPUMZ ;;
  }

  dimension: origin_profile_source_id {
    type: string
    sql: ${TABLE}.OriginProfile_SOURCE_ID ;;
  }

  dimension: origin_of_configuration_kzkfg {
    type: string
    sql: ${TABLE}.OriginofConfiguration_KZKFG ;;
  }

  dimension: outward_delivery_completed_flag_eglkz {
    type: string
    sql: ${TABLE}.OutwardDeliveryCompletedFlag_EGLKZ ;;
  }

  dimension: overdelivery_tolerance_limit_uebto {
    type: number
    sql: ${TABLE}.OverdeliveryToleranceLimit_UEBTO ;;
  }

  dimension: owner_of_stock_disub_owner {
    type: string
    sql: ${TABLE}.Ownerofstock_DISUB_OWNER ;;
  }

  dimension: package_number_packno {
    type: string
    sql: ${TABLE}.Packagenumber_PACKNO ;;
  }

  dimension: partial_invoice_flag_twrkz {
    type: string
    sql: ${TABLE}.PartialInvoiceFlag_TWRKZ ;;
  }

  dimension: partner_profit_center_ko_pprctr {
    type: string
    sql: ${TABLE}.PartnerProfitCenter_KO_PPRCTR ;;
  }

  dimension: period_flag_for_shelf_life_expiration_date_iprkz {
    type: string
    sql: ${TABLE}.PeriodFlagforShelfLifeExpirationDate_IPRKZ ;;
  }

  dimension: planned_delivery_time_in_days_plifz {
    type: number
    sql: ${TABLE}.PlannedDeliveryTimeinDays_PLIFZ ;;
  }

  dimension: plant_werks {
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: points_unit_punei {
    type: string
    sql: ${TABLE}.Pointsunit_PUNEI ;;
  }

  dimension: po_quantity_menge {
    type: number
    sql: ${TABLE}.POQuantity_MENGE ;;
  }

  dimension: posting_logic_in_the_case_of_stock_transfers_ccomp {
    type: string
    sql: ${TABLE}.PostingLogicintheCaseofStockTransfers_CCOMP ;;
  }

  dimension: price_printout_prsdr {
    type: string
    sql: ${TABLE}.PricePrintout_PRSDR ;;
  }

  dimension: price_unit_peinh {
    type: number
    sql: ${TABLE}.PriceUnit_PEINH ;;
  }

  dimension: pricing_date_control_meprf {
    type: string
    sql: ${TABLE}.PricingDateControl_MEPRF ;;
  }

  dimension: prior_vendor_kolif {
    type: string
    sql: ${TABLE}.PriorVendor_KOLIF ;;
  }

  dimension: processing_key_for_subitems_sikgr {
    type: string
    sql: ${TABLE}.Processingkeyforsubitems_SIKGR ;;
  }

  dimension: profit_center_ko_prctr {
    type: string
    sql: ${TABLE}.ProfitCenter_KO_PRCTR ;;
  }

  dimension: promotion_aktnr {
    type: string
    sql: ${TABLE}.Promotion_AKTNR ;;
  }

  dimension: purchase_order_for_consignment_cons_order {
    type: string
    sql: ${TABLE}.PurchaseOrderforConsignment_CONS_ORDER ;;
  }

  dimension: purchase_requisition_number_banfn {
    type: string
    sql: ${TABLE}.PurchaseRequisitionNumber_BANFN ;;
  }

  dimension: purchasing_document_category_bstyp {
    type: string
    sql: ${TABLE}.PurchasingDocumentCategory_BSTYP ;;
  }

  dimension: quality_inspection_flag_cannot_be_changed_insnc {
    type: string
    sql: ${TABLE}.QualityinspectionFlagcannotbechanged_INSNC ;;
  }

  dimension: quota_arrangement_usage_usequ {
    type: string
    sql: ${TABLE}.Quotaarrangementusage_USEQU ;;
  }

  dimension: real_time_consumption_posting_of_subcontracting_components_itcons {
    type: string
    sql: ${TABLE}.RealTimeConsumptionPostingofSubcontractingComponents_ITCONS ;;
  }

  dimension: reason_for_ordering_bsgru {
    type: string
    sql: ${TABLE}.ReasonforOrdering_BSGRU ;;
  }

  dimension: reason_for_rejection_of_quotations_and_sales_orders_spe_abgru {
    type: string
    sql: ${TABLE}.Reasonforrejectionofquotationsandsalesorders_SPE_ABGRU ;;
  }

  dimension: rebate_basis1_bonba {
    type: number
    sql: ${TABLE}.Rebatebasis1_BONBA ;;
  }

  dimension: receiving_point_empst {
    type: string
    sql: ${TABLE}.Receivingpoint_EMPST ;;
  }

  dimension_group: reconciliation_date_for_agreed_cumulative_quantity_abdat {
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
    sql: ${TABLE}.ReconciliationDateforAgreedCumulativeQuantity_ABDAT ;;
  }

  dimension: reference_item_for_remaining_qty_cancellation_ref_item {
    type: string
    sql: ${TABLE}.ReferenceItemforRemainingQtyCancellation_REF_ITEM ;;
  }

  dimension: reference_site_for_purchasing_refsite {
    type: string
    sql: ${TABLE}.ReferenceSiteForPurchasing_REFSITE ;;
  }

  dimension: rejection_flag_abskz {
    type: string
    sql: ${TABLE}.RejectionFlag_ABSKZ ;;
  }

  dimension: release_creation_profile_abueb {
    type: string
    sql: ${TABLE}.ReleaseCreationProfile_ABUEB ;;
  }

  dimension: relevant_to_allocation_table_aurel {
    type: string
    sql: ${TABLE}.RelevanttoAllocationTable_AUREL ;;
  }

  dimension: requirement_priority_prio_req {
    type: string
    sql: ${TABLE}.RequirementPriority_PRIO_REQ ;;
  }

  dimension: requirement_tracking_number_bednr {
    type: string
    sql: ${TABLE}.RequirementTrackingNumber_BEDNR ;;
  }

  dimension: requirement_urgency_prio_urg {
    type: string
    sql: ${TABLE}.RequirementUrgency_PRIO_URG ;;
  }

  dimension: retail_price_relevant_mrpind {
    type: string
    sql: ${TABLE}.RetailPriceRelevant_MRPIND ;;
  }

  dimension: retention_in_percent_retpc {
    type: number
    sql: ${TABLE}.RetentioninPercent_RETPC ;;
  }

  dimension: returns_item_retpo {
    type: string
    sql: ${TABLE}.ReturnsItem_RETPO ;;
  }

  dimension: revision_level_revlv {
    type: string
    sql: ${TABLE}.RevisionLevel_REVLV ;;
  }

  dimension: rfq_number_anfnr {
    type: string
    sql: ${TABLE}.RFQNumber_ANFNR ;;
  }

  dimension: rfq_status_statu {
    type: string
    sql: ${TABLE}.RFQtatus_STATU ;;
  }

  dimension: risk_relevancyin_purchasing_trmrisk_relevant {
    type: string
    sql: ${TABLE}.RiskRelevancyinPurchasing_TRMRISK_RELEVANT ;;
  }

  dimension: rounding_profile_rdprf {
    type: string
    sql: ${TABLE}.RoundingProfile_RDPRF ;;
  }

  dimension: sales_and_distribution_document_number_disub_vbeln {
    type: string
    sql: ${TABLE}.SalesandDistributionDocumentNumber_DISUB_VBELN ;;
  }

  dimension: season_category_saiso {
    type: string
    sql: ${TABLE}.SeasonCategory_SAISO ;;
  }

  dimension: season_year_saisj {
    type: string
    sql: ${TABLE}.SeasonYear_SAISJ ;;
  }

  dimension: sequential_number_drunr {
    type: string
    sql: ${TABLE}.SequentialNumber_DRUNR ;;
  }

  dimension: serial_number_profile_sernp {
    type: string
    sql: ${TABLE}.SerialNumberProfile_SERNP ;;
  }

  dimension: service_based_commitment_srv_bas_com {
    type: string
    sql: ${TABLE}.ServiceBasedCommitment_SRV_BAS_COM ;;
  }

  dimension: settlement_group1_bonus {
    type: string
    sql: ${TABLE}.SettlementGroup1_BONUS ;;
  }

  dimension: settlement_group2_ebon2 {
    type: string
    sql: ${TABLE}.SettlementGroup2_EBON2 ;;
  }

  dimension: settlement_group3_ebon3 {
    type: string
    sql: ${TABLE}.SettlementGroup3_EBON3 ;;
  }

  dimension: settlement_reservation_number_arsnr {
    type: string
    sql: ${TABLE}.Settlementreservationnumber_ARSNR ;;
  }

  dimension: shipping_instructions_evers {
    type: string
    sql: ${TABLE}.ShippingInstructions_EVERS ;;
  }

  dimension: shipping_type_vsart {
    type: string
    sql: ${TABLE}.Shippingtype_VSART ;;
  }

  dimension: short_text_txz01 {
    type: string
    sql: ${TABLE}.ShortText_TXZ01 ;;
  }

  dimension: special_stock_flag_sobkz {
    type: string
    sql: ${TABLE}.SpecialStockFlag_SOBKZ ;;
  }

  dimension: special_stock_flag_for_physical_stock_transfer_umsok {
    type: string
    sql: ${TABLE}.SpecialStockFlagforPhysicalStockTransfer_UMSOK ;;
  }

  dimension: special_stock_flag_subcontracting_disub_sobkz {
    type: string
    sql: ${TABLE}.SpecialstockFlagSubcontracting_DISUB_SOBKZ ;;
  }

  dimension: standard_variant_techs {
    type: string
    sql: ${TABLE}.StandardVariant_TECHS ;;
  }

  dimension: standard_release_orderquantity_abmng {
    type: number
    sql: ${TABLE}.Standardreleaseorderquantity_ABMNG ;;
  }

  dimension_group: start_date_for_gr_based_settlement_eildt {
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
    sql: ${TABLE}.StartDateforGRBasedSettlement_EILDT ;;
  }

  dimension: status_of_purchasing_document_item_status {
    type: string
    sql: ${TABLE}.StatusofPurchasingDocumentItem_STATUS ;;
  }

  dimension: stock_transfer_kztlf {
    type: string
    sql: ${TABLE}.StockTransfer_KZTLF ;;
  }

  dimension: stock_type_insmk {
    type: string
    sql: ${TABLE}.StockType_INSMK ;;
  }

  dimension: stock_type_of_source_storage_locationin_sto_spe_insmk_src {
    type: string
    sql: ${TABLE}.StockTypeofSourceStorageLocationinSTO_SPE_INSMK_SRC ;;
  }

  dimension: storage_location_lgort {
    type: string
    sql: ${TABLE}.StorageLocation_LGORT ;;
  }

  dimension: store_return_with_inboundand_outbound_delivery_fls_rsto {
    type: string
    sql: ${TABLE}.StoreReturnwithInboundandOutboundDelivery_FLS_RSTO ;;
  }

  dimension: subcontracting_vendor_lblkz {
    type: string
    sql: ${TABLE}.Subcontractingvendor_LBLKZ ;;
  }

  dimension: subitem_category_uptyp {
    type: string
    sql: ${TABLE}.SubitemCategory_UPTYP ;;
  }

  dimension: subitems_exist_upvor {
    type: string
    sql: ${TABLE}.SubitemsExist_UPVOR ;;
  }

  dimension: subtotal1_from_pricing_procedure_for_condition_kzwi1 {
    type: number
    sql: ${TABLE}.Subtotal1frompricingprocedureforcondition_KZWI1 ;;
  }

  dimension: subtotal2_from_pricing_procedure_for_condition_kzwi2 {
    type: number
    sql: ${TABLE}.Subtotal2frompricingprocedureforcondition_KZWI2 ;;
  }

  dimension: subtotal3_from_pricing_procedure_for_condition_kzwi3 {
    type: number
    sql: ${TABLE}.Subtotal3frompricingprocedureforcondition_KZWI3 ;;
  }

  dimension: subtotal4_from_pricing_procedure_for_condition_kzwi4 {
    type: number
    sql: ${TABLE}.Subtotal4frompricingprocedureforcondition_KZWI4 ;;
  }

  dimension: subtotal5_from_pricing_procedure_for_condition_kzwi5 {
    type: number
    sql: ${TABLE}.Subtotal5frompricingprocedureforcondition_KZWI5 ;;
  }

  dimension: subtotal6_from_pricing_procedure_for_condition_kzwi6 {
    type: number
    sql: ${TABLE}.Subtotal6frompricingprocedureforcondition_KZWI6 ;;
  }

  dimension: target_quantity_ktmng {
    type: number
    sql: ${TABLE}.TargetQuantity_KTMNG ;;
  }

  dimension: target_valuefor_outline_agreement_in_document_currency_zwert {
    type: number
    sql: ${TABLE}.TargetValueforOutlineAgreementinDocumentCurrency_ZWERT ;;
  }

  dimension: tax_code_automatically_determined_tc_aut_det {
    type: string
    sql: ${TABLE}.TaxCodeAutomaticallyDetermined_TC_AUT_DET ;;
  }

  dimension: tax_incentive_type_fiscal_incentive {
    type: string
    sql: ${TABLE}.TaxIncentiveType_FISCAL_INCENTIVE ;;
  }

  dimension: tax_jurisdiction_txjcd {
    type: string
    sql: ${TABLE}.TaxJurisdiction_TXJCD ;;
  }

  dimension: tax_subject_tax_subject_st {
    type: string
    sql: ${TABLE}.TaxSubject_TAX_SUBJECT_ST ;;
  }

  dimension: taxcode_mwskz {
    type: string
    sql: ${TABLE}.Taxcode_MWSKZ ;;
  }

  dimension_group: time_druhr {
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
    sql: ${TABLE}.Time_DRUHR ;;
  }

  dimension: timezone_of_recipient_location_tzonrc {
    type: string
    sql: ${TABLE}.Timezoneofrecipientlocation_TZONRC ;;
  }

  dimension: trade_off_zone_etfz2 {
    type: number
    sql: ${TABLE}.TradeOffZone_ETFZ2 ;;
  }

  dimension: type_of_subcontracting_serru {
    type: string
    sql: ${TABLE}.Typeofsubcontracting_SERRU ;;
  }

  dimension: underdelivery_tolerance_limit_untto {
    type: number
    sql: ${TABLE}.UnderdeliveryToleranceLimit_UNTTO ;;
  }

  dimension: unit_of_weight_gewei {
    type: string
    sql: ${TABLE}.UnitofWeight_GEWEI ;;
  }

  dimension: units_of_measure_usage_kzfme {
    type: string
    sql: ${TABLE}.Unitsofmeasureusage_KZFME ;;
  }

  dimension: unlimited_over_delivery_allowed_uebtk {
    type: string
    sql: ${TABLE}.UnlimitedOverdeliveryAllowed_UEBTK ;;
  }

  dimension: uo_m_meins {
    type: string
    sql: ${TABLE}.UoM_MEINS ;;
  }

  dimension: update_info_record_flag_spinf {
    type: string
    sql: ${TABLE}.UpdateInfoRecordFlag_SPINF ;;
  }

  dimension: update_group_for_statistics_update_stafo {
    type: string
    sql: ${TABLE}.Updategroupforstatisticsupdate_STAFO ;;
  }

  dimension: valuation_category_bwtty {
    type: string
    sql: ${TABLE}.ValuationCategory_BWTTY ;;
  }

  dimension: valuation_type_bwtar {
    type: string
    sql: ${TABLE}.ValuationType_BWTAR ;;
  }

  dimension: valuation_of_special_stock_kzbws {
    type: string
    sql: ${TABLE}.ValuationofSpecialStock_KZBWS ;;
  }

  dimension: vendor_subrange_ltsnr {
    type: string
    sql: ${TABLE}.VendorSubrange_LTSNR ;;
  }

  dimension: vendor_to_be_supplied_emlif {
    type: string
    sql: ${TABLE}.Vendortobesupplied_EMLIF ;;
  }

  dimension: volume_volum {
    type: number
    sql: ${TABLE}.Volume_VOLUM ;;
  }

  dimension: volume_unit_voleh {
    type: string
    sql: ${TABLE}.Volumeunit_VOLEH ;;
  }

  dimension: wbs_element_disub_pspnr {
    type: string
    sql: ${TABLE}.WBSElement_DISUB_PSPNR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
