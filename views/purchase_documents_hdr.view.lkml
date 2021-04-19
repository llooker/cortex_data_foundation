view: purchase_documents_hdr {
  sql_table_name: `SAP_REPORTING.PurchaseDocumentsHdr`
    ;;

  dimension: additional_document_addnr {
    type: string
    sql: ${TABLE}.AdditionalDocument_ADDNR ;;
  }

  dimension: address_adrnr {
    type: string
    sql: ${TABLE}.Address_ADRNR ;;
  }

  dimension: area_per_distribution_value_ktwrt {
    type: number
    sql: ${TABLE}.AreaPerDistributionValue_KTWRT ;;
  }

  dimension: bidinvitationnumber_ausnr {
    type: string
    sql: ${TABLE}.Bidinvitationnumber_AUSNR ;;
  }

  dimension_group: binding_periodfor_quotation_bnddt {
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
    sql: ${TABLE}.BindingPeriodforQuotation_BNDDT ;;
  }

  dimension: budget_type_budg_type {
    type: string
    sql: ${TABLE}.BudgetType_BUDG_TYPE ;;
  }

  dimension: cash_discount_percentage1_zbd1_p {
    type: number
    sql: ${TABLE}.CashDiscountPercentage1_ZBD1P ;;
  }

  dimension: cash_discount_percentage2_zbd2_p {
    type: number
    sql: ${TABLE}.CashDiscountPercentage2_ZBD2P ;;
  }

  dimension: category_incompleteness_memorytype {
    type: string
    sql: ${TABLE}.CategoryIncompleteness_MEMORYTYPE ;;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension_group: closing_datefor_applications_bwbdt {
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
    sql: ${TABLE}.ClosingDateforApplications_BWBDT ;;
  }

  dimension: co_co_curency_decimals {
    type: number
    sql: ${TABLE}.CoCoCurencyDecimals ;;
  }

  dimension: collective_number_submi {
    type: string
    sql: ${TABLE}.CollectiveNumber_SUBMI ;;
  }

  dimension: company_bukrs {
    type: string
    sql: ${TABLE}.Company_BUKRS ;;
  }

  dimension: company_currency {
    type: string
    sql: ${TABLE}.CompanyCurrency ;;
  }

  dimension: complete_delivery_stipulated_autlf {
    type: string
    sql: ${TABLE}.CompleteDeliveryStipulated_AUTLF ;;
  }

  dimension: consider_budget_key_id_allow {
    type: string
    sql: ${TABLE}.ConsiderBudget_KEY_ID_ALLOW ;;
  }

  dimension: contract_name_description {
    type: string
    sql: ${TABLE}.ContractName_DESCRIPTION ;;
  }

  dimension: control_flag_bsakz {
    type: string
    sql: ${TABLE}.ControlFlag_BSAKZ ;;
  }

  dimension: correction_misc_provisions_kornr {
    type: string
    sql: ${TABLE}.CorrectionMiscProvisions_KORNR ;;
  }

  dimension: country_sales_tax_idnumber_stceg_l {
    type: string
    sql: ${TABLE}.CountrySalesTaxIDNumber_STCEG_L ;;
  }

  dimension: countryfor_tax_return_lands {
    type: string
    sql: ${TABLE}.CountryforTaxReturn_LANDS ;;
  }

  dimension: created_by_ernam {
    type: string
    sql: ${TABLE}.CreatedBy_ERNAM ;;
  }

  dimension_group: created_on_aedat {
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
    sql: ${TABLE}.CreatedOn_AEDAT ;;
  }

  dimension: currency_key_waers {
    type: string
    sql: ${TABLE}.CurrencyKey_WAERS ;;
  }

  dimension: customer_kunnr {
    type: string
    sql: ${TABLE}.Customer_KUNNR ;;
  }

  dimension_group: deadline_angdt {
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
    sql: ${TABLE}.Deadline_ANGDT ;;
  }

  dimension: deletion_flag_loekz {
    type: string
    sql: ${TABLE}.DeletionFlag_LOEKZ ;;
  }

  dimension: different_invoicing_party_lifre {
    type: string
    sql: ${TABLE}.DifferentInvoicingParty_LIFRE ;;
  }

  dimension: discount_days1_zbd1_t {
    type: number
    sql: ${TABLE}.DiscountDays1_ZBD1T ;;
  }

  dimension: discount_days2_zbd2_t {
    type: number
    sql: ${TABLE}.DiscountDays2_ZBD2T ;;
  }

  dimension: discount_days3_zbd3_t {
    type: number
    sql: ${TABLE}.DiscountDays3_ZBD3T ;;
  }

  dimension: distribution_using_target_valueor_item_data_con_distr_lev {
    type: string
    sql: ${TABLE}.DistributionUsingTargetValueorItemData_CON_DISTR_LEV ;;
  }

  dimension: document_category_bstyp {
    type: string
    sql: ${TABLE}.DocumentCategory_BSTYP ;;
  }

  dimension: document_number_ebeln {
    type: string
    sql: ${TABLE}.DocumentNumber_EBELN ;;
  }

  dimension: document_type_bsart {
    type: string
    sql: ${TABLE}.DocumentType_BSART ;;
  }

  dimension: down_payment_amountin_document_currency_dpamt {
    type: number
    sql: ${TABLE}.DownPaymentAmountinDocumentCurrency_DPAMT ;;
  }

  dimension: down_payment_flag_dptyp {
    type: string
    sql: ${TABLE}.DownPaymentFlag_DPTYP ;;
  }

  dimension: down_payment_percentage_dppct {
    type: number
    sql: ${TABLE}.DownPaymentPercentage_DPPCT ;;
  }

  dimension_group: due_datefor_down_payment_dpdat {
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

  dimension_group: end_validity_period_kdate {
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
    sql: ${TABLE}.EndValidityPeriod_KDATE ;;
  }

  dimension: exchange_rate_wkurs {
    type: number
    sql: ${TABLE}.ExchangeRate_WKURS ;;
  }

  dimension: exchange_threshold_value_threshold_exists {
    type: string
    sql: ${TABLE}.ExchangeThresholdValue_THRESHOLD_EXISTS ;;
  }

  dimension: firm_deal_flag_fixpo {
    type: string
    sql: ${TABLE}.FirmDealFlag_FIXPO ;;
  }

  dimension: flag_fixing_exchange_rate_kufix {
    type: string
    sql: ${TABLE}.FlagFixingExchangeRate_KUFIX ;;
  }

  dimension: foreign_trade_document_exnum {
    type: string
    sql: ${TABLE}.ForeignTradeDocument_EXNUM ;;
  }

  dimension: goods_receipt_msg_flag_weakt {
    type: string
    sql: ${TABLE}.GoodsReceiptMsgFlag_WEAKT ;;
  }

  dimension: goods_receipt_reason_reason_code {
    type: string
    sql: ${TABLE}.GoodsReceiptReason_REASON_CODE ;;
  }

  dimension: include_vendor_subrange_ltsnr_allow {
    type: string
    sql: ${TABLE}.IncludeVendorSubrange_LTSNR_ALLOW ;;
  }

  dimension: incomplete_flag_memory {
    type: string
    sql: ${TABLE}.IncompleteFlag_MEMORY ;;
  }

  dimension: incoterms1_inco1 {
    type: string
    sql: ${TABLE}.Incoterms1_INCO1 ;;
  }

  dimension: incoterms2_inco2 {
    type: string
    sql: ${TABLE}.Incoterms2_INCO2 ;;
  }

  dimension: interestcalculation_flag_vzskz {
    type: string
    sql: ${TABLE}.InterestcalculationFlag_VZSKZ ;;
  }

  dimension: internal_counter_force_cnt {
    type: string
    sql: ${TABLE}.InternalCounter_FORCE_CNT ;;
  }

  dimension: internal_keyfor_force_element_force_id {
    type: string
    sql: ${TABLE}.InternalKeyforForceElement_FORCE_ID ;;
  }

  dimension: item_number_interval_pincr {
    type: string
    sql: ${TABLE}.ItemNumberInterval_PINCR ;;
  }

  dimension: item_number_interval_upinc {
    type: string
    sql: ${TABLE}.ItemNumberInterval_UPINC ;;
  }

  dimension: language_spras {
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: last_item_number_lponr {
    type: string
    sql: ${TABLE}.LastItemNumber_LPONR ;;
  }

  dimension: legal_contract_number_legal_contract {
    type: string
    sql: ${TABLE}.LegalContractNumber_LEGAL_CONTRACT ;;
  }

  dimension: logical_system_logsy {
    type: string
    sql: ${TABLE}.LogicalSystem_LOGSY ;;
  }

  dimension: logical_system_source_logsys {
    type: string
    sql: ${TABLE}.Logicalsystem_SOURCE_LOGSYS ;;
  }

  dimension: number_the_document_condition_knumv {
    type: string
    sql: ${TABLE}.Numberthedocumentcondition_KNUMV ;;
  }

  dimension: otb_check_level_otb_level {
    type: string
    sql: ${TABLE}.OTBCheckLevel_OTB_LEVEL ;;
  }

  dimension: otb_check_status_otb_status {
    type: string
    sql: ${TABLE}.OTBCheckStatus_OTB_STATUS ;;
  }

  dimension: otb_condition_type_otb_cond_type {
    type: string
    sql: ${TABLE}.OTBConditionType_OTB_COND_TYPE ;;
  }

  dimension: otb_currency_otb_curr {
    type: string
    sql: ${TABLE}.OTBCurrency_OTB_CURR ;;
  }

  dimension: otb_flag_levelfor_contracts_con_prebook_lev {
    type: string
    sql: ${TABLE}.OTBFlagLevelforContracts_CON_PREBOOK_LEV ;;
  }

  dimension: otb_relevant_contract_con_otb_req {
    type: string
    sql: ${TABLE}.OTBRelevantContract_CON_OTB_REQ ;;
  }

  dimension: our_reference_unsez {
    type: string
    sql: ${TABLE}.OurReference_UNSEZ ;;
  }

  dimension: part_a_contract_hierarchy_hierarchy_exists {
    type: string
    sql: ${TABLE}.PartaContractHierarchy_HIERARCHY_EXISTS ;;
  }

  dimension: physical_handover_handoverloc {
    type: string
    sql: ${TABLE}.Physicalhandover_HANDOVERLOC ;;
  }

  dimension: principal_purchase_agreement_konnr {
    type: string
    sql: ${TABLE}.PrincipalPurchaseAgreement_KONNR ;;
  }

  dimension: procedure_kalsm {
    type: string
    sql: ${TABLE}.Procedure_KALSM ;;
  }

  dimension: process_identification_number_msr_id {
    type: string
    sql: ${TABLE}.ProcessIdentificationNumber_MSR_ID ;;
  }

  dimension: processing_state_procstat {
    type: string
    sql: ${TABLE}.ProcessingState_PROCSTAT ;;
  }

  dimension_group: purchasing_document_date_bedat {
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
    sql: ${TABLE}.PurchasingDocumentDate_BEDAT ;;
  }

  dimension: purchasing_document_release_frgke {
    type: string
    sql: ${TABLE}.PurchasingDocumentRelease_FRGKE ;;
  }

  dimension: purchasing_group_ekgrp {
    type: string
    sql: ${TABLE}.PurchasingGroup_EKGRP ;;
  }

  dimension: purchasing_organization_ekorg {
    type: string
    sql: ${TABLE}.PurchasingOrganization_EKORG ;;
  }

  dimension: quotation_number_angnr {
    type: string
    sql: ${TABLE}.QuotationNumber_ANGNR ;;
  }

  dimension_group: quotation_submission_date_ihran {
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
    sql: ${TABLE}.QuotationSubmissionDate_IHRAN ;;
  }

  dimension: reason_flagfor_otbcheck_status_otb_reason {
    type: string
    sql: ${TABLE}.ReasonFlagforOTBCheckStatus_OTB_REASON ;;
  }

  dimension: reasonfor_cancellation_absgr {
    type: string
    sql: ${TABLE}.ReasonforCancellation_ABSGR ;;
  }

  dimension_group: release_date_contract_release {
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
    sql: ${TABLE}.ReleaseDateContract_RELEASE_DATE ;;
  }

  dimension: release_incomplete_frgrl {
    type: string
    sql: ${TABLE}.ReleaseIncomplete_FRGRL ;;
  }

  dimension: release_status_frgzu {
    type: string
    sql: ${TABLE}.ReleaseStatus_FRGZU ;;
  }

  dimension: release_strategy_frgsx {
    type: string
    sql: ${TABLE}.ReleaseStrategy_FRGSX ;;
  }

  dimension: release_group_frggr {
    type: string
    sql: ${TABLE}.Releasegroup_FRGGR ;;
  }

  dimension: relocation_id_reloc_id {
    type: string
    sql: ${TABLE}.RelocationID_RELOC_ID ;;
  }

  dimension: relocation_step_id_reloc_seq_id {
    type: string
    sql: ${TABLE}.RelocationStepID_RELOC_SEQ_ID ;;
  }

  dimension: required_budget_otb_value {
    type: number
    sql: ${TABLE}.RequiredBudget_OTB_VALUE ;;
  }

  dimension: reserved_budgetfor_otb_otb_res_value {
    type: number
    sql: ${TABLE}.ReservedBudgetforOTB_OTB_RES_VALUE ;;
  }

  dimension: retention_flag_rettp {
    type: string
    sql: ${TABLE}.RetentionFlag_RETTP ;;
  }

  dimension: retentionin_percent_retpc {
    type: number
    sql: ${TABLE}.RetentioninPercent_RETPC ;;
  }

  dimension_group: same_delivery_date_eq_eindt {
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
    sql: ${TABLE}.SameDeliveryDate_EQ_EINDT ;;
  }

  dimension: same_receiving_plant_eq_werks {
    type: string
    sql: ${TABLE}.SameReceivingPlant_EQ_WERKS ;;
  }

  dimension: scheduling_agreement_lphis {
    type: string
    sql: ${TABLE}.SchedulingAgreement_LPHIS ;;
  }

  dimension: scmprocess_scmproc {
    type: string
    sql: ${TABLE}.SCMProcess_SCMPROC ;;
  }

  dimension: seasonal_procesing_document_pohf_type {
    type: string
    sql: ${TABLE}.SeasonalProcesingDocument_POHF_TYPE ;;
  }

  dimension: shippingtype_vsart {
    type: string
    sql: ${TABLE}.Shippingtype_VSART ;;
  }

  dimension: special_release_budget_otb_spec_value {
    type: number
    sql: ${TABLE}.SpecialReleaseBudget_OTB_SPEC_VALUE ;;
  }

  dimension_group: start_validity_period_kdatb {
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
    sql: ${TABLE}.StartValidityPeriod_KDATB ;;
  }

  dimension: status_statu {
    type: string
    sql: ${TABLE}.Status_STATU ;;
  }

  dimension: supply_transport_orders_reswk {
    type: string
    sql: ${TABLE}.SupplyTransportOrders_RESWK ;;
  }

  dimension: supplying_vendor_llief {
    type: string
    sql: ${TABLE}.SupplyingVendor_LLIEF ;;
  }

  dimension: take_account_alloc_table_relevance_aurel_allow {
    type: string
    sql: ${TABLE}.TakeAccountAllocTableRelevance_AUREL_ALLOW ;;
  }

  dimension: take_account_contracts_contract_allow {
    type: string
    sql: ${TABLE}.TakeAccountContracts_CONTRACT_ALLOW ;;
  }

  dimension: take_account_delivery_date_eindt_allow {
    type: string
    sql: ${TABLE}.TakeAccountDeliveryDate_EINDT_ALLOW ;;
  }

  dimension: take_account_dlvy_period_delper_allow {
    type: string
    sql: ${TABLE}.TakeAccountDlvyPeriod_DELPER_ALLOW ;;
  }

  dimension: take_account_fixed_date_fixpo_allow {
    type: string
    sql: ${TABLE}.TakeAccountFixedDate_FIXPO_ALLOW ;;
  }

  dimension: take_account_item_categories_pstyp_allow {
    type: string
    sql: ${TABLE}.TakeAccountItemCategories_PSTYP_ALLOW ;;
  }

  dimension: take_account_plants_werks_allow {
    type: string
    sql: ${TABLE}.TakeAccountPlants_WERKS_ALLOW ;;
  }

  dimension: take_account_purch_group_ekgrp_allow {
    type: string
    sql: ${TABLE}.TakeAccountPurchGroup_EKGRP_ALLOW ;;
  }

  dimension: terms_payment_key_zterm {
    type: string
    sql: ${TABLE}.TermsPaymentKey_ZTERM ;;
  }

  dimension: time_dependent_conditions_stako {
    type: string
    sql: ${TABLE}.TimeDependentConditions_STAKO ;;
  }

  dimension: type_otbcheck_check_type {
    type: string
    sql: ${TABLE}.TypeOTBCheck_CHECK_TYPE ;;
  }

  dimension: unique_number_budget_key_id {
    type: string
    sql: ${TABLE}.UniqueNumberBudget_KEY_ID ;;
  }

  dimension: update_group_statistics_stafo {
    type: string
    sql: ${TABLE}.UpdateGroupStatistics_STAFO ;;
  }

  dimension: value_at_release_rlwrt {
    type: number
    sql: ${TABLE}.ValueAtRelease_RLWRT ;;
  }

  dimension: vatregistration_number_stceg {
    type: string
    sql: ${TABLE}.VATRegistrationNumber_STCEG ;;
  }

  dimension: vendor_account_number_lifnr {
    type: string
    sql: ${TABLE}.VendorAccountNumber_LIFNR ;;
  }

  dimension: vendor_salesperson_verkf {
    type: string
    sql: ${TABLE}.VendorSalesperson_VERKF ;;
  }

  dimension: vendor_telephone_telf1 {
    type: string
    sql: ${TABLE}.VendorTelephone_TELF1 ;;
  }

  dimension: versionnumberin_purchasing_revno {
    type: string
    sql: ${TABLE}.VersionnumberinPurchasing_REVNO ;;
  }

  dimension_group: warranty_date_gwldt {
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
    sql: ${TABLE}.WarrantyDate_GWLDT ;;
  }

  dimension: your_reference_ihrez {
    type: string
    sql: ${TABLE}.YourReference_IHREZ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
