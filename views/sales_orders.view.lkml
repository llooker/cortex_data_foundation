include: "custom_navigation.view.lkml"

view: sales_orders {
  sql_table_name: `SAP_REPORTING.SalesOrders`
    ;;

  extends: [custom_navigation_buttons]

  dimension: sales_order_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: concat(${sales_document_vbeln},'-',${sales_orders.item_posnr},) ;;
  }

  dimension: account_assignment_category_knttp {
    hidden: yes
    type: string
    sql: ${TABLE}.Accountassignmentcategory_KNTTP ;;
  }

  dimension: account_assignment_group_for_this_material_ktgrm {
    hidden: yes
    type: string
    sql: ${TABLE}.Accountassignmentgroupforthismaterial_KTGRM ;;
  }

  dimension: agreement_knuma {
    hidden: yes
    type: string
    sql: ${TABLE}.Agreement_KNUMA ;;
  }

  dimension_group: agreement_valid_from_guebg {
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
    sql: ${TABLE}.AgreementValidFrom_GUEBG ;;
  }

  dimension_group: agreement_valid_to_gueen {
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
    sql: ${TABLE}.AgreementValidTo_GUEEN ;;
  }

  dimension: allocation_indicator_vpzuo {
    hidden: yes
    type: string
    sql: ${TABLE}.AllocationIndicator_VPZUO ;;
  }

  dimension: allowed_deviation_absfz {
    hidden: yes
    type: number
    sql: ${TABLE}.AllowedDeviation_ABSFZ ;;
  }

  dimension: allowed_deviation_percent_kbver {
    hidden: yes
    type: number
    sql: ${TABLE}.AlloweddeviationPercent_KBVER ;;
  }

  dimension: alternative_for_item_grpos {
    hidden: yes
    type: string
    sql: ${TABLE}.AlternativeForItem_GRPOS ;;
  }

  dimension: alternative_tax_classification_taxk1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Alternativetaxclassification_TAXK1 ;;
  }

  dimension: approval_block_msr_approv_block {
    hidden: yes
    type: string
    sql: ${TABLE}.ApprovalBlock_MSR_APPROV_BLOCK ;;
  }

  dimension: assignment_number_zuonr {
    hidden: yes
    type: string
    sql: ${TABLE}.Assignmentnumber_ZUONR ;;
  }

  dimension: assortment_module_skopf {
    hidden: yes
    type: string
    sql: ${TABLE}.AssortmentModule_SKOPF ;;
  }

  dimension: base_target_conversion_factor_umziz {
    hidden: yes
    type: number
    sql: ${TABLE}.BaseTargetConversionFactor_UMZIZ ;;
  }

  dimension: base_unit_of_measure_meins {
    type: string
    sql: ${TABLE}.BaseUnitofMeasure_MEINS ;;
  }

  dimension: base_unit_of_measure_for_product_group_prbme {
    hidden: yes
    type: string
    sql: ${TABLE}.Baseunitofmeasureforproductgroup_PRBME ;;
  }

  dimension: batch_number_charg {
    hidden: yes
    type: string
    sql: ${TABLE}.BatchNumber_CHARG ;;
  }

  dimension: batch_management_indicator_xchar {
    hidden: yes
    type: string
    sql: ${TABLE}.Batchmanagementindicator_XCHAR ;;
  }

  dimension: batch_management_requirement_indicator_xchpf {
    hidden: yes
    type: string
    sql: ${TABLE}.Batchmanagementrequirementindicator_XCHPF ;;
  }

  dimension: batch_split_allowed_chspl {
    hidden: yes
    type: string
    sql: ${TABLE}.Batchsplitallowed_CHSPL ;;
  }

  dimension: billing_block_faksk {
    hidden: yes
    type: string
    sql: ${TABLE}.Billingblock_FAKSK ;;
  }

  dimension: billing_block_for_item_faksp {
    hidden: yes
    type: string
    sql: ${TABLE}.Billingblockforitem_FAKSP ;;
  }

  dimension: bom_stlnr {
    hidden: yes
    type: string
    sql: ${TABLE}.BOM_STLNR ;;
  }

  dimension: bom_category_stlty {
    hidden: yes
    type: string
    sql: ${TABLE}.BOMCategory_STLTY ;;
  }

  dimension_group: bom_date_stdat {
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
    sql: ${TABLE}.BOMDate_STDAT ;;
  }

  dimension: bom_explosion_number_sernr {
    hidden: yes
    type: string
    sql: ${TABLE}.BOMexplosionnumber_SERNR ;;
  }

  dimension: bom_item_level_uepos {
    hidden: yes
    type: string
    sql: ${TABLE}.BOMItemLevel_UEPOS ;;
  }

  dimension: bomi_tem_node_number_stlkn {
    hidden: yes
    type: string
    sql: ${TABLE}.BOMItemNodeNumber_STLKN ;;
  }

  dimension: bom_item_number_sposn {
    hidden: yes
    type: string
    sql: ${TABLE}.BOMItemNumber_SPOSN ;;
  }

  dimension: bom_origin_stkey {
    hidden: yes
    type: string
    sql: ${TABLE}.BOMOrigin_STKEY ;;
  }

  dimension: business_area_gsber {
    type: string
    sql: ${TABLE}.BusinessArea_GSBER ;;
  }

  dimension: business_area_hdr_gsber {
    hidden: yes
    type: string
    sql: ${TABLE}.BusinessAreaHdr_GSBER ;;
  }

  dimension: business_transaction_type_for_foreign_trade_exart {
    hidden: yes
    type: string
    sql: ${TABLE}.BusinessTransactionTypeforForeignTrade_EXART ;;
  }

  dimension: cash_discount_indicator_sktof {
    type: string
    sql: ${TABLE}.Cashdiscountindicator_SKTOF ;;
  }

  dimension_group: changed_on_aedat {
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
    sql: ${TABLE}.ChangedOn_AEDAT ;;
  }

  dimension: checking_group_for_availability_check_mtvfp {
    hidden: yes
    type: string
    sql: ${TABLE}.CheckingGroupforAvailabilityCheck_MTVFP ;;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: collective_number_submi {
    hidden: yes
    type: string
    sql: ${TABLE}.Collectivenumber_SUBMI ;;
  }

  dimension: commission_group_provg {
    hidden: yes
    type: string
    sql: ${TABLE}.Commissiongroup_PROVG ;;
  }

  dimension: company_code_to_be_billed_bukrs_vf {
    type: string
    sql: ${TABLE}.Companycodetobebilled_BUKRS_VF ;;
  }

  dimension: complete_delivery_flag_autlf {
    type: string
    sql: ${TABLE}.CompleteDeliveryFlag_AUTLF ;;
  }

  dimension: completion_rule_for_quotation_erlre {
    hidden: yes
    type: string
    sql: ${TABLE}.CompletionruleforQuotation_ERLRE ;;
  }

  dimension: component_quantity_kmpmg {
    hidden: yes
    type: number
    sql: ${TABLE}.ComponentQuantity_KMPMG ;;
  }

  dimension: condition_number_knumv {
    hidden: yes
    type: string
    sql: ${TABLE}.ConditionNumber_KNUMV ;;
  }

  dimension: condition_unit_kmein {
    hidden: yes
    type: string
    sql: ${TABLE}.ConditionUnit_KMEIN ;;
  }

  dimension: condition_pricing_unit_kpein {
    hidden: yes
    type: number
    sql: ${TABLE}.Conditionpricingunit_KPEIN ;;
  }

  dimension: condition_record_number_nrab_knumh {
    hidden: yes
    type: string
    sql: ${TABLE}.Conditionrecordnumber_NRAB_KNUMH ;;
  }

  dimension: condition_update_koupd {
    hidden: yes
    type: string
    sql: ${TABLE}.Conditionupdate_KOUPD ;;
  }

  dimension: configuration_cuobj {
    hidden: yes
    type: string
    sql: ${TABLE}.Configuration_CUOBJ ;;
  }

  dimension: consumption_posting_kzvbr {
    hidden: yes
    type: string
    sql: ${TABLE}.Consumptionposting_KZVBR ;;
  }

  dimension: controlling_area_kokrs {
    hidden: yes
    type: string
    sql: ${TABLE}.ControllingArea_KOKRS ;;
  }

  dimension: conversion_factor_umzin {
    hidden: yes
    type: number
    sql: ${TABLE}.ConversionFactor_UMZIN ;;
  }

  dimension: conversion_factor_quantities_umref {
    hidden: yes
    type: number
    sql: ${TABLE}.Conversionfactorquantities_UMREF ;;
  }

  dimension: cost_center_hdr_kostl {
    hidden: yes
    type: string
    sql: ${TABLE}.CostCenterHdr_KOSTL ;;
  }

  dimension: cost_center_kostl {
    hidden: yes
    type: string
    sql: ${TABLE}.CostCenter_KOSTL ;;
  }

  dimension: cost_ctr_business_area_gskst {
    hidden: yes
    type: string
    sql: ${TABLE}.CostCtrBusinessArea_GSKST ;;
  }

  dimension: cost_estimate_number_kalnr {
    hidden: yes
    type: string
    sql: ${TABLE}.CostEstimateNumber_KALNR ;;
  }

  dimension: cost_in_document_currency_wavwr {
    type: number
    sql: ${TABLE}.Costindocumentcurrency_WAVWR ;;
  }

  dimension: costing_sheet_kalsm_k {
    hidden: yes
    type: string
    sql: ${TABLE}.CostingSheet_KALSM_K ;;
  }

  dimension: costing_variant_kalvar {
    hidden: yes
    type: string
    sql: ${TABLE}.CostingVariant_KALVAR ;;
  }

  dimension: costing_variant_klvar {
    hidden: yes
    type: string
    sql: ${TABLE}.CostingVariant_KLVAR ;;
  }

  dimension: created_by_ernam {
    hidden: yes
    type: string
    sql: ${TABLE}.CreatedBy_ERNAM ;;
  }

  dimension_group: creation_date_erdat {
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
    sql: ${TABLE}.CreationDate_ERDAT ;;
  }

  dimension_group: creation_time_erzet {
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
    sql: ${TABLE}.CreationTime_ERZET ;;
  }

  dimension: credit_block_cmtfg {
    hidden: yes
    type: string
    sql: ${TABLE}.creditblock_CMTFG ;;
  }

  dimension: credit_control_area_kkber {
    hidden: yes
    type: string
    sql: ${TABLE}.Creditcontrolarea_KKBER ;;
  }

  dimension: credit_representative_group_for_credit_management_sbgrp {
    hidden: yes
    type: string
    sql: ${TABLE}.Creditrepresentativegroupforcreditmanagement_SBGRP ;;
  }

  dimension: cumulative_confirmed_quantity_kbmeng {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeConfirmedQuantity_KBMENG ;;
  }

  dimension: cumulative_confirmed_quantity_in_base_uo_m_klmeng {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeConfirmedQuantityinBaseUoM_KLMENG ;;
  }

  dimension: cumulative_order_quantity_kwmeng {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeOrderQuantity_KWMENG ;;
  }

  dimension: cumulative_target_delivery_qty_lsmeng {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeTargetDeliveryQty_LSMENG ;;
  }

  dimension: currency_hdr_waerk {
    type: string
    sql: ${TABLE}.CurrencyHdr_WAERK ;;
  }

  dimension: currency_waerk {
    type: string
    sql: ${TABLE}.Currency_WAERK ;;
  }

  dimension: currency_key_of_credit_control_area_cmwae {
    hidden: yes
    type: string
    sql: ${TABLE}.Currencykeyofcreditcontrolarea_CMWAE ;;
  }

  dimension: customer_credit_group_grupp {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerCreditGroup_GRUPP ;;
  }

  dimension: customer_credit_limit_ref_knkli {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerCreditLimitRef_KNKLI ;;
  }

  dimension: customer_material_number_kdmat {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerMaterialNumber_KDMAT ;;
  }

  dimension: customer_group1_kvgr1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Customergroup1_KVGR1 ;;
  }

  dimension: customer_group2_kvgr2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Customergroup2_KVGR2 ;;
  }

  dimension: customer_group3_kvgr3 {
    hidden: yes
    type: string
    sql: ${TABLE}.Customergroup3_KVGR3 ;;
  }

  dimension: customer_group4_kvgr4 {
    hidden: yes
    type: string
    sql: ${TABLE}.Customergroup4_KVGR4 ;;
  }

  dimension: customer_group5_kvgr5 {
    hidden: yes
    type: string
    sql: ${TABLE}.Customergroup5_KVGR5 ;;
  }

  dimension: customer_has_not_posted_goods_receipt_nachl {
    hidden: yes
    type: string
    sql: ${TABLE}.Customerhasnotpostedgoodsreceipt_NACHL ;;
  }

  dimension_group: customer_purchase_order_date_bstdk {
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
    sql: ${TABLE}.Customerpurchaseorderdate_BSTDK ;;
  }

  dimension: customer_purchase_order_number_bstnk {
    type: string
    sql: ${TABLE}.Customerpurchaseordernumber_BSTNK ;;
  }

  dimension: customer_purchase_order_type_bsark {
    type: string
    sql: ${TABLE}.Customerpurchaseordertype_BSARK ;;
  }

  dimension: dangerous_goods_flag_cont_dg {
    hidden: yes
    type: string
    sql: ${TABLE}.DangerousGoodsFlag_CONT_DG ;;
  }

  dimension: dangerous_goods_management_profile_proli {
    hidden: yes
    type: string
    sql: ${TABLE}.DangerousGoodsManagementProfile_PROLI ;;
  }

  dimension_group: date_of_next_credit_check_of_document_cmnup {
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
    sql: ${TABLE}.Dateofnextcreditcheckofdocument_CMNUP ;;
  }

  dimension: days_by_which_the_quantity_can_be_shifted_kever {
    hidden: yes
    type: number
    sql: ${TABLE}.Daysbywhichthequantitycanbeshifted_KEVER ;;
  }

  dimension: delivery_priority_lprio {
    hidden: yes
    type: string
    sql: ${TABLE}.DeliveryPriority_LPRIO ;;
  }

  dimension: delivery_block_lifsk {
    hidden: yes
    type: string
    sql: ${TABLE}.Deliveryblock_LIFSK ;;
  }

  dimension: delivery_date_and_quantity_fixed_fixmg {
    hidden: yes
    type: string
    sql: ${TABLE}.Deliverydateandquantityfixed_FIXMG ;;
  }

  dimension: delivery_group_grkor {
    hidden: yes
    type: string
    sql: ${TABLE}.Deliverygroup_GRKOR ;;
  }

  dimension: denominator_qty_umvkn {
    hidden: yes
    type: number
    sql: ${TABLE}.DenominatorQty_UMVKN ;;
  }

  dimension: distribution_channel_vtweg {
    type: string
    sql: ${TABLE}.DistributionChannel_VTWEG ;;
  }

  dimension: division_hdr_spart {
    hidden: yes
    type: string
    sql: ${TABLE}.DivisionHdr_SPART ;;
  }

  dimension: division_spart {
    hidden: yes
    type: string
    sql: ${TABLE}.Division_SPART ;;
  }

  dimension: document_category_vbtyp {
    type: string
    sql: ${TABLE}.DocumentCategory_VBTYP ;;
  }

  dimension_group: document_date_audat {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      month_name
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DocumentDate_AUDAT ;;
  }

  dimension: document_indicator_vbklt {
    hidden: yes
    type: string
    sql: ${TABLE}.DocumentIndicator_VBKLT ;;
  }

  dimension: document_vbeln {
    type: string
    sql: ${TABLE}.Document_VBELN ;;
  }

  dimension: document_number_of_the_reference_document_vgbel {
    type: string
    sql: ${TABLE}.Documentnumberofthereferencedocument_VGBEL ;;
  }

  dimension: exchange_rate_type_kurst {
    type: string
    sql: ${TABLE}.ExchangeRateType_KURST ;;
  }

  dimension: exchange_rate_for_statistics_stcur {
    type: number
    sql: ${TABLE}.Exchangerateforstatistics_STCUR ;;
  }

  dimension: fixed_shipping_processing_time_in_days_vbeaf {
    hidden: yes
    type: number
    sql: ${TABLE}.Fixedshippingprocessingtimeindays_VBEAF ;;
  }

  dimension: form_of_billing_for_co_rkfkf {
    hidden: yes
    type: string
    sql: ${TABLE}.FormofBillingforCO_RKFKF ;;
  }

  dimension: form_of_payment_guarantee_abfor {
    hidden: yes
    type: string
    sql: ${TABLE}.Formofpaymentguarantee_ABFOR ;;
  }

  dimension: freegoods_delivery_control_lstanr {
    hidden: yes
    type: string
    sql: ${TABLE}.FreegoodsDeliveryControl_LSTANR ;;
  }

  dimension: functional_area_fkber {
    hidden: yes
    type: string
    sql: ${TABLE}.FunctionalArea_FKBER ;;
  }

  dimension: fund_fonds {
    hidden: yes
    type: string
    sql: ${TABLE}.Fund_FONDS ;;
  }

  dimension: funds_center_fistl {
    hidden: yes
    type: string
    sql: ${TABLE}.FundsCenter_FISTL ;;
  }

  dimension: gross_weight_of_item_brgew {
    type: number
    sql: ${TABLE}.Grossweightofitem_BRGEW ;;
  }

  dimension: guaranteed_factor_abges {
    hidden: yes
    type: number
    sql: ${TABLE}.GuaranteedFactor_ABGES ;;
  }

  dimension_group: handover_date_at_the_handover_location_handoverdate {
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
    sql: ${TABLE}.HandoverDateattheHandoverLocation_HANDOVERDATE ;;
  }

  dimension_group: handover_time_at_the_handover_location_handovertime {
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
    sql: ${TABLE}.Handovertimeatthehandoverlocation_HANDOVERTIME ;;
  }

  dimension: hierarchy_type_for_pricing_hityp_pr {
    hidden: yes
    type: string
    sql: ${TABLE}.Hierarchytypeforpricing_HITYP_PR ;;
  }

  dimension: import_export_flag_prefe {
    hidden: yes
    type: string
    sql: ${TABLE}.ImportExportFlag_PREFE ;;
  }

  dimension: incentive_id_fiscal_incentive_id {
    hidden: yes
    type: string
    sql: ${TABLE}.IncentiveID_FISCAL_INCENTIVE_ID ;;
  }

  dimension: inconsistent_configuration_stman {
    hidden: yes
    type: string
    sql: ${TABLE}.Inconsistentconfiguration_STMAN ;;
  }

  dimension: internal_class_number_clint {
    hidden: yes
    type: string
    sql: ${TABLE}.InternalClassNumber_CLINT ;;
  }

  dimension: internal_counter_stpoz {
    hidden: yes
    type: string
    sql: ${TABLE}.Internalcounter_STPOZ ;;
  }

  dimension: internal_object_number_of_the_batch_classification_cuobj_ch {
    hidden: yes
    type: string
    sql: ${TABLE}.Internalobjectnumberofthebatchclassification_CUOBJ_CH ;;
  }

  dimension: international_article_number_ean11 {
    hidden: yes
    type: string
    sql: ${TABLE}.InternationalArticleNumber_EAN11 ;;
  }

  dimension: international_unique_key_handle {
    type: string
    sql: ${TABLE}.Internationaluniquekey_HANDLE ;;
  }

  dimension: item_category_pstyv {
    type: string
    sql: ${TABLE}.ItemCategory_PSTYV ;;
  }

  dimension: item_number_of_the_underlying_purchase_order_posex {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemNumberoftheUnderlyingPurchaseOrder_POSEX ;;
  }

  dimension: item_posnr {
    type: string
    sql: ${TABLE}.Item_POSNR ;;
  }

  dimension: item_type_posar {
    hidden: yes
    type: string
    sql: ${TABLE}.ItemType_POSAR ;;
  }

  dimension: item_credit_price_cmpre {
    hidden: yes
    type: number
    sql: ${TABLE}.Itemcreditprice_CMPRE ;;
  }

  dimension: item_credit_price_cmpre_flt {
    hidden: yes
    type: number
    sql: ${TABLE}.Itemcreditprice_CMPRE_FLT ;;
  }

  dimension: kanban_kannr {
    hidden: yes
    type: string
    sql: ${TABLE}.KANBAN_KANNR ;;
  }

  dimension_group: last_changed_on_aedat {
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
    sql: ${TABLE}.LastChangedOn_AEDAT ;;
  }

  dimension_group: last_customer_contact_date_mahdt {
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
    sql: ${TABLE}.Lastcustomercontactdate_MAHDT ;;
  }

  dimension: leading_uom_kzfme {
    hidden: yes
    type: string
    sql: ${TABLE}.LeadingUoM_KZFME ;;
  }

  dimension: location_for_a_physical_handover_of_goods_handoverloc {
    hidden: yes
    type: string
    sql: ${TABLE}.Locationforaphysicalhandoverofgoods_HANDOVERLOC ;;
  }

  dimension: managing_location_stockloc {
    hidden: yes
    type: string
    sql: ${TABLE}.ManagingLocation_STOCKLOC ;;
  }

  dimension: manual_tax_code_reason_manual_tc_reason {
    hidden: yes
    type: string
    sql: ${TABLE}.ManualTaxCodeReason_MANUAL_TC_REASON ;;
  }

  dimension: material_freight_group_mfrgr {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialFreightGroup_MFRGR ;;
  }

  dimension: material_group_matkl {
    type: string
    sql: ${TABLE}.MaterialGroup_MATKL ;;
  }

  dimension: material_number_matnr {
    type: string
    sql: ${TABLE}.MaterialNumber_MATNR ;;
  }

  dimension: material_pricing_group_kondm {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialPricingGroup_KONDM ;;
  }

  dimension: material_pricing_group_ukonm {
    hidden: yes
    type: string
    sql: ${TABLE}.MaterialPricingGroup_UKONM ;;
  }

  dimension: material_entered_matwa {
    hidden: yes
    type: string
    sql: ${TABLE}.Materialentered_MATWA ;;
  }

  dimension: material_group1_mvgr1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Materialgroup1_MVGR1 ;;
  }

  dimension: material_group2_mvgr2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Materialgroup2_MVGR2 ;;
  }

  dimension: material_group3_mvgr3 {
    hidden: yes
    type: string
    sql: ${TABLE}.Materialgroup3_MVGR3 ;;
  }

  dimension: material_group4_mvgr4 {
    hidden: yes
    type: string
    sql: ${TABLE}.Materialgroup4_MVGR4 ;;
  }

  dimension: material_group5_mvgr5 {
    hidden: yes
    type: string
    sql: ${TABLE}.Materialgroup5_MVGR5 ;;
  }

  dimension: material_group_hierarchy1_wgru1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Materialgrouphierarchy1_WGRU1 ;;
  }

  dimension: material_group_hierarchy2_wgru2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Materialgrouphierarchy2_WGRU2 ;;
  }

  dimension: maximum_partial_deliveries_antlf {
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumPartialDeliveries_ANTLF ;;
  }

  dimension: minimum_delivery_quantity_in_delivery_note_processing_lfmng {
    hidden: yes
    type: number
    sql: ${TABLE}.Minimumdeliveryquantityindeliverynoteprocessing_LFMNG ;;
  }

  dimension: mrp_area_berid {
    hidden: yes
    type: string
    sql: ${TABLE}.MRPArea_BERID ;;
  }

  dimension: mrp_for_delivery_schedule_types_abdis {
    hidden: yes
    type: string
    sql: ${TABLE}.MRPfordeliveryscheduletypes_ABDIS ;;
  }

  dimension: master_contract_number_vbeln_grp {
    type: string
    sql: ${TABLE}.Mstercontractnumber_VBELN_GRP ;;
  }

  dimension: name_of_orderer_bname {
    type: string
    sql: ${TABLE}.Nameoforderer_BNAME ;;
  }

  dimension: net_price_netwr {
    hidden: yes
    type: number
    sql: ${TABLE}.NetPrice_NETWR ;;
  }

  dimension: net_value_of_the_sales_order_in_document_currency_netwr {
    hidden: yes
    type: number
    sql: ${TABLE}.NetValueoftheSalesOrderinDocumentCurrency_NETWR ;;
  }

  dimension: net_price_netpr {
    hidden: yes
    type: number
    sql: ${TABLE}.Netprice_NETPR ;;
  }

  dimension: net_weight_of_item_ntgew {
    type: number
    sql: ${TABLE}.Netweightofitem_NTGEW ;;
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
    sql: ${TABLE}.Nextdate_CMNGV ;;
  }

  dimension: not_a_fiscal_special_case_for_cfop_determination_spcsto {
    hidden: yes
    type: string
    sql: ${TABLE}.NotaFiscalSpecialCaseforCFOPDetermination_SPCSTO ;;
  }

  dimension: notification_no_qmnum {
    hidden: yes
    type: string
    sql: ${TABLE}.NotificationNo_QMNUM ;;
  }

  dimension: number_of_condition_record_knumh {
    hidden: yes
    type: string
    sql: ${TABLE}.Numberofconditionrecord_KNUMH ;;
  }

  dimension: number_of_contacts_from_the_customer_mahza {
    hidden: yes
    type: number
    sql: ${TABLE}.Numberofcontactsfromthecustomer_MAHZA ;;
  }

  dimension: number_of_serial_numbers_anzsn {
    hidden: yes
    type: number
    sql: ${TABLE}.Numberofserialnumbers_ANZSN ;;
  }

  dimension: numerator_qty_umvkz {
    hidden: yes
    type: number
    sql: ${TABLE}.NumeratorQty_UMVKZ ;;
  }

  dimension: object_number_at_header_level_objnr {
    hidden: yes
    type: string
    sql: ${TABLE}.Objectnumberatheaderlevel_OBJNR ;;
  }

  dimension: object_number_at_item_level_objnr {
    hidden: yes
    type: string
    sql: ${TABLE}.Objectnumberatitemlevel_OBJNR ;;
  }

  dimension: order_number_aufnr {
    hidden: yes
    type: string
    sql: ${TABLE}.OrderNumber_AUFNR ;;
  }

  dimension: order_number_hdr_aufnr {
    hidden: yes
    type: string
    sql: ${TABLE}.OrderNumberHdr_AUFNR ;;
  }

  dimension: order_probability_of_the_item_awahr {
    hidden: yes
    type: string
    sql: ${TABLE}.Orderprobabilityoftheitem_AWAHR ;;
  }

  dimension: original_system_vbkla {
    hidden: yes
    type: string
    sql: ${TABLE}.OriginalSystem_VBKLA ;;
  }

  dimension: originating_document_vbelv {
    hidden: yes
    type: string
    sql: ${TABLE}.Originatingdocument_VBELV ;;
  }

  dimension: originating_item_posnv {
    hidden: yes
    type: string
    sql: ${TABLE}.Originatingitem_POSNV ;;
  }

  dimension: overdelivery_tolerance_limit_uebto {
    hidden: yes
    type: number
    sql: ${TABLE}.OverdeliveryToleranceLimit_UEBTO ;;
  }

  dimension: overheadkey_zschl_k {
    hidden: yes
    type: string
    sql: ${TABLE}.Overheadkey_ZSCHL_K ;;
  }

  dimension: packaging_materials_magrv {
    hidden: yes
    type: string
    sql: ${TABLE}.PackagingMaterials_MAGRV ;;
  }

  dimension: parameter_variant_techs {
    hidden: yes
    type: string
    sql: ${TABLE}.ParameterVariant_TECHS ;;
  }

  dimension: partial_delivery_at_item_level_kztlf {
    hidden: yes
    type: string
    sql: ${TABLE}.Partialdeliveryatitemlevel_KZTLF ;;
  }

  dimension: planning_release_regulation_plavo {
    hidden: yes
    type: string
    sql: ${TABLE}.PlanningReleaseRegulation_PLAVO ;;
  }

  dimension: planning_material_vpmat {
    hidden: yes
    type: string
    sql: ${TABLE}.Planningmaterial_VPMAT ;;
  }

  dimension: planning_plant_vpwrk {
    hidden: yes
    type: string
    sql: ${TABLE}.Planningplant_VPWRK ;;
  }

  dimension: plant_werks {
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: pre_doc_category_vgtyp {
    hidden: yes
    type: string
    sql: ${TABLE}.PreDocCategory_VGTYP ;;
  }

  dimension: preceding_doc_category_vgtyp {
    hidden: yes
    type: string
    sql: ${TABLE}.PrecedingDocCategory_VGTYP ;;
  }

  dimension: preceding_document_has_resulted_from_reference_vgref {
    hidden: yes
    type: string
    sql: ${TABLE}.Precedingdocumenthasresultedfromreference_VGREF ;;
  }

  dimension: pricing_procedure_kalsm {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingProcedure_KALSM ;;
  }

  dimension: pricing_reference_material_pmatn {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingReferenceMaterial_PMATN ;;
  }

  dimension: pricing_reference_material_upmat {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingReferenceMaterial_UPMAT ;;
  }

  dimension: pricing_is_ok_prsok {
    hidden: yes
    type: string
    sql: ${TABLE}.PricingisOK_PRSOK ;;
  }

  dimension: product_hierarchy_prodh {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductHierarchy_PRODH ;;
  }

  dimension: product_allocation_kosch {
    hidden: yes
    type: string
    sql: ${TABLE}.Productallocation_KOSCH ;;
  }

  dimension: profit_center_prctr {
    hidden: yes
    type: string
    sql: ${TABLE}.ProfitCenter_PRCTR ;;
  }

  dimension: profit_center_for_billing_pctrf {
    hidden: yes
    type: string
    sql: ${TABLE}.ProfitCenterforBilling_PCTRF ;;
  }

  dimension: profitability_segment_number_paobjnr {
    hidden: yes
    type: string
    sql: ${TABLE}.ProfitabilitySegmentNumber_PAOBJNR ;;
  }

  dimension: promotion_knuma_pi {
    hidden: yes
    type: string
    sql: ${TABLE}.Promotion_KNUMA_PI ;;
  }

  dimension: proposed_billing_type_fkara {
    hidden: yes
    type: string
    sql: ${TABLE}.Proposedbillingtype_FKARA ;;
  }

  dimension: proposed_date_type_vprgr {
    hidden: yes
    type: string
    sql: ${TABLE}.Proposeddatetype_VPRGR ;;
  }

  dimension: purchase_order_number_supplement_bstzd {
    hidden: yes
    type: string
    sql: ${TABLE}.Purchaseordernumbersupplement_BSTZD ;;
  }

  dimension: quantity_is_fixed_fmeng {
    hidden: yes
    type: string
    sql: ${TABLE}.Quantityisfixed_FMENG ;;
  }

  dimension_group: quotation_date_from_angdt {
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
    sql: ${TABLE}.QuotationDateFrom_ANGDT ;;
  }

  dimension_group: quotation_date_to_bnddt {
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
    sql: ${TABLE}.QuotationDateTo_BNDDT ;;
  }

  dimension: reason_augru {
    hidden: yes
    type: string
    sql: ${TABLE}.Reason_AUGRU ;;
  }

  dimension: reason_for_material_substitution_sugrd {
    hidden: yes
    type: string
    sql: ${TABLE}.Reasonformaterialsubstitution_SUGRD ;;
  }

  dimension_group: reconciliation_date_abdat {
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
    sql: ${TABLE}.ReconciliationDate_ABDAT ;;
  }

  dimension: reference_document_number_xblnr {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceDocumentNumber_XBLNR ;;
  }

  dimension: reference_document_vgbel {
    type: string
    sql: ${TABLE}.ReferenceDocument_VGBEL ;;
  }

  dimension: reference_indicator_voref {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceIndicator_VOREF ;;
  }

  dimension: reference_item_vgpos {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceItem_VGPOS ;;
  }

  dimension: rejection_reason_abgru {
    hidden: yes
    type: string
    sql: ${TABLE}.RejectionReason_ABGRU ;;
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
    sql: ${TABLE}.Releasedateofthedocumentdeterminedbycreditmanagement_CMFRE ;;
  }

  dimension: released_credit_value_of_the_document_amtbl {
    hidden: yes
    type: number
    sql: ${TABLE}.Releasedcreditvalueofthedocument_AMTBL ;;
  }

  dimension: relevant_for_billing_fkrel {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantforBilling_FKREL ;;
  }

  dimension: relevant_for_delivery_lfrel {
    hidden: yes
    type: string
    sql: ${TABLE}.RelevantforDelivery_LFREL ;;
  }

  dimension: relevant_for_credit_cmpnt {
    hidden: yes
    type: string
    sql: ${TABLE}.Relevantforcredit_CMPNT ;;
  }

  dimension: repair_processing_vkgru {
    hidden: yes
    type: string
    sql: ${TABLE}.Repairprocessing_VKGRU ;;
  }

  dimension: replacement_part_atpkz {
    hidden: yes
    type: string
    sql: ${TABLE}.Replacementpart_ATPKZ ;;
  }

  dimension_group: requested_delivery_date_vdatu {
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
    sql: ${TABLE}.Requesteddeliverydate_VDATU ;;
  }

  dimension: requirements_type_bedae {
    hidden: yes
    type: string
    sql: ${TABLE}.Requirementstype_BEDAE ;;
  }

  dimension: results_analysis_key_abgrs {
    hidden: yes
    type: string
    sql: ${TABLE}.ResultsAnalysisKey_ABGRS ;;
  }

  dimension: return_reason_msr_ret_reason {
    type: string
    sql: ${TABLE}.ReturnReason_MSR_RET_REASON ;;
  }

  dimension: returns_item_shkzg {
    type: string
    sql: ${TABLE}.ReturnsItem_SHKZG ;;
  }

  dimension: returns_refund_code_msr_refund_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ReturnsRefundCode_MSR_REFUND_CODE ;;
  }

  dimension: risk_relevancy_in_sales_trmrisk_relevant {
    hidden: yes
    type: string
    sql: ${TABLE}.RiskRelevancyinSales_TRMRISK_RELEVANT ;;
  }

  dimension: risk_category_ctlpc {
    hidden: yes
    type: string
    sql: ${TABLE}.Riskcategory_CTLPC ;;
  }

  dimension: rounding_quantity_for_delivery_ablfz {
    hidden: yes
    type: number
    sql: ${TABLE}.Roundingquantityfordelivery_ABLFZ ;;
  }

  dimension: route_route {
    hidden: yes
    type: string
    sql: ${TABLE}.Route_ROUTE ;;
  }

  dimension: sales_document_type_auart {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesDocumentType_AUART ;;
  }

  dimension: sales_document_vbeln {
    type: number
    sql: ${TABLE}.SalesDocument_VBELN;;
  }

  dimension: sales_group_vkgrp {
    type: string
    sql: ${TABLE}.SalesGroup_VKGRP ;;
  }

  dimension: sales_office_vkbur {
    type: string
    sql: ${TABLE}.SalesOffice_VKBUR ;;
  }

  dimension: sales_organization_vkorg {
    type: string
    sql: ${TABLE}.SalesOrganization_VKORG ;;
  }

  dimension: sales_deal_knuma_ag {
    hidden: yes
    type: string
    sql: ${TABLE}.Salesdeal_KNUMA_AG ;;
  }

  dimension: sales_probability_awahr {
    hidden: yes
    type: string
    sql: ${TABLE}.Salesprobability_AWAHR ;;
  }

  dimension: sales_unit_vrkme {
    type: string
    sql: ${TABLE}.Salesunit_VRKME ;;
  }

  dimension: scale_quantity_smeng {
    hidden: yes
    type: number
    sql: ${TABLE}.Scalequantity_SMENG ;;
  }

  dimension: search_term_for_product_proposal_ktext {
    hidden: yes
    type: string
    sql: ${TABLE}.Searchtermforproductproposal_KTEXT ;;
  }

  dimension: separat_evaluation_bwtex {
    hidden: yes
    type: string
    sql: ${TABLE}.Separatevaluation_BWTEX ;;
  }

  dimension: serial_number_profile_serail {
    hidden: yes
    type: string
    sql: ${TABLE}.SerialNumberProfile_SERAIL ;;
  }

  dimension: shipping_conditions_vsbed {
    hidden: yes
    type: string
    sql: ${TABLE}.ShippingConditions_VSBED ;;
  }

  dimension: shipping_receiving_point_vstel {
    type: string
    sql: ${TABLE}.ShippingReceivingPoint_VSTEL ;;
  }

  dimension: short_text_arktx {
    type: string
    sql: ${TABLE}.ShortText_ARKTX ;;
  }

  dimension: sold_to_party_kunnr {
    hidden: yes
    type: string
    sql: ${TABLE}.SoldtoParty_KUNNR ;;
  }

  dimension: special_stock_indicator_sobkz {
    hidden: yes
    type: string
    sql: ${TABLE}.SpecialStockIndicator_SOBKZ ;;
  }

  dimension: statistical_values_kowrr {
    hidden: yes
    type: string
    sql: ${TABLE}.Statisticalvalues_KOWRR ;;
  }

  dimension: statistics_currency_stwae {
    hidden: yes
    type: string
    sql: ${TABLE}.Statisticscurrency_STWAE ;;
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
    sql: ${TABLE}.Statisticsdate_STADAT ;;
  }

  dimension: status_expected_price_cepok {
    hidden: yes
    type: string
    sql: ${TABLE}.Statusexpectedprice_CEPOK ;;
  }

  dimension: status_manual_price_change_mprok {
    hidden: yes
    type: string
    sql: ${TABLE}.Statusmanualpricechange_MPROK ;;
  }

  dimension: storage_location_lgort {
    type: string
    sql: ${TABLE}.StorageLocation_LGORT ;;
  }

  dimension: subtotal1_from_pricing_procedure_for_condition_kzwi1 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal1frompricingprocedureforcondition_KZWI1 ;;
  }

  dimension: subtotal2_from_pricing_procedure_for_condition_kzwi2 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal2frompricingprocedureforcondition_KZWI2 ;;
  }

  dimension: subtotal3_from_pricing_procedure_for_condition_kzwi3 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal3frompricingprocedureforcondition_KZWI3 ;;
  }

  dimension: subtotal4_from_pricing_procedure_for_condition_kzwi4 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal4frompricingprocedureforcondition_KZWI4 ;;
  }

  dimension: subtotal5_from_pricing_procedure_for_condition_kzwi5 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal5frompricingprocedureforcondition_KZWI5 ;;
  }

  dimension: subtotal6_from_pricing_procedure_for_condition_kzwi6 {
    hidden: yes
    type: number
    sql: ${TABLE}.Subtotal6frompricingprocedureforcondition_KZWI6 ;;
  }

  dimension: summing_up_of_requirements_sumbd {
    hidden: yes
    type: string
    sql: ${TABLE}.Summingupofrequirements_SUMBD ;;
  }

  dimension: target_quantity_uom_zmeng {
    hidden: yes
    type: number
    sql: ${TABLE}.TargetQuantityUoM_ZMENG ;;
  }

  dimension: target_value_zwert {
    hidden: yes
    type: number
    sql: ${TABLE}.TargetValue_ZWERT ;;
  }

  dimension: target_quantity_uo_m_zieme {
    hidden: yes
    type: string
    sql: ${TABLE}.TargetquantityUoM_ZIEME ;;
  }

  dimension: tax_classification4_taxk4 {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxClassification4_TAXK4 ;;
  }

  dimension: tax_code_automatically_determined_tc_aut_det {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxCodeAutomaticallyDetermined_TC_AUT_DET ;;
  }

  dimension: tax_destination_country_stceg_l {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxDestinationCountry_STCEG_L ;;
  }

  dimension: tax_incentive_type_fiscal_incentive {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxIncentiveType_FISCAL_INCENTIVE ;;
  }

  dimension: tax_amount_in_document_currency_mwsbp {
    hidden: yes
    type: number
    sql: ${TABLE}.Taxamountindocumentcurrency_MWSBP ;;
  }

  dimension: tax_classification1_taxm1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification1_TAXM1 ;;
  }

  dimension: tax_classification2_taxk2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification2_TAXK2 ;;
  }

  dimension: tax_classification2_taxm2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification2_TAXM2 ;;
  }

  dimension: tax_classification3_taxk3 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification3_TAXK3 ;;
  }

  dimension: tax_classification3_taxm3 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification3_TAXM3 ;;
  }

  dimension: tax_classification4_taxm4 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification4_TAXM4 ;;
  }

  dimension: tax_classification5_taxk5 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification5_TAXK5 ;;
  }

  dimension: tax_classification5_taxm5 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification5_TAXM5 ;;
  }

  dimension: tax_classification6_taxk6 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification6_TAXK6 ;;
  }

  dimension: tax_classification6_taxm6 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification6_TAXM6 ;;
  }

  dimension: tax_classification7_taxk7 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification7_TAXK7 ;;
  }

  dimension: tax_classification7_taxm7 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification7_TAXM7 ;;
  }

  dimension: tax_classification8_taxk8 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification8_TAXK8 ;;
  }

  dimension: tax_classification8_taxm8 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification8_TAXM8 ;;
  }

  dimension: tax_classification9_taxk9 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification9_TAXK9 ;;
  }

  dimension: tax_classification9_taxm9 {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxclassification9_TAXM9 ;;
  }

  dimension: tax_departure_country_landtx {
    hidden: yes
    type: string
    sql: ${TABLE}.Taxdeparturecountry_LANDTX ;;
  }

  dimension: telephone_number_telf1 {
    hidden: yes
    type: string
    sql: ${TABLE}.TelephoneNumber_TELF1 ;;
  }

  dimension: transaction_group_trvog {
    hidden: yes
    type: string
    sql: ${TABLE}.TransactionGroup_TRVOG ;;
  }

  dimension: type_of_first_inventory_sloctype {
    hidden: yes
    type: string
    sql: ${TABLE}.TypeofFirstInventory_SLOCTYPE ;;
  }

  dimension: underdelivery_tolerance_limit_untto {
    hidden: yes
    type: number
    sql: ${TABLE}.UnderdeliveryToleranceLimit_UNTTO ;;
  }

  dimension: unlimited_overdelivery_allowed_uebtk {
    hidden: yes
    type: string
    sql: ${TABLE}.Unlimitedoverdeliveryallowed_UEBTK ;;
  }

  dimension: update_indicator_upflu {
    hidden: yes
    type: string
    sql: ${TABLE}.UpdateIndicator_UPFLU ;;
  }

  dimension: update_group_for_statistics_stafo {
    hidden: yes
    type: string
    sql: ${TABLE}.Updategroupforstatistics_STAFO ;;
  }

  dimension: update_group_for_statistics_update_stafo {
    hidden: yes
    type: string
    sql: ${TABLE}.Updategroupforstatisticsupdate_STAFO ;;
  }

  dimension: usage_indicator_abrvw {
    hidden: yes
    type: string
    sql: ${TABLE}.UsageIndicator_ABRVW ;;
  }

  dimension: usage_indicator_vkaus {
    hidden: yes
    type: string
    sql: ${TABLE}.UsageIndicator_VKAUS ;;
  }

  dimension: utc_time_stamp_l_upd_tmstmp {
    hidden: yes
    type: number
    sql: ${TABLE}.UTCTimeStampL_UPD_TMSTMP ;;
  }

  dimension: valuation_of_special_stock_kzbws {
    hidden: yes
    type: string
    sql: ${TABLE}.ValuationofSpecialStock_KZBWS ;;
  }

  dimension: valuation_type_bwtar {
    hidden: yes
    type: string
    sql: ${TABLE}.Valuationtype_BWTAR ;;
  }

  dimension: value_contract_item_wktps {
    hidden: yes
    type: string
    sql: ${TABLE}.Valuecontractitem_WKTPS ;;
  }

  dimension: value_contract_no_wktnr {
    hidden: yes
    type: string
    sql: ${TABLE}.Valuecontractno_WKTNR ;;
  }

  dimension: variable_shipping_processing_time_in_days_vbeav {
    hidden: yes
    type: number
    sql: ${TABLE}.Variableshippingprocessingtimeindays_VBEAV ;;
  }

  dimension: volume_of_the_item_volum {
    type: number
    sql: ${TABLE}.Volumeoftheitem_VOLUM ;;
  }

  dimension: volume_rebate_group_bonus {
    hidden: yes
    type: string
    sql: ${TABLE}.Volumerebategroup_BONUS ;;
  }

  dimension: volume_unit_voleh {
    type: string
    sql: ${TABLE}.Volumeunit_VOLEH ;;
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

  dimension: wbs_element_hdr_ps_psp_pnr {
    hidden: yes
    type: string
    sql: ${TABLE}.WBSElementHdr_PS_PSP_PNR ;;
  }

  dimension: wbs_element_ps_psp_pnr {
    hidden: yes
    type: string
    sql: ${TABLE}.WBSElement_PS_PSP_PNR ;;
  }

  dimension: weight_unit_gewei {
    hidden: yes
    type: string
    sql: ${TABLE}.WeightUnit_GEWEI ;;
  }

  dimension: your_reference_ihrez {
    hidden: yes
    type: string
    sql: ${TABLE}.YourReference_IHREZ ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: [name_of_orderer_bname]
  # }

  measure: total_sales_orders {
    # type: sum_distinct
    type: count_distinct
    sql: ${sales_document_vbeln};;
    filters: [document_category_vbtyp: "C"]
    value_format_name: decimal_0
  }

  measure: total_volume {
    description: "Automatically includes Volume Unit in the request."
    type: sum
    sql: ${volume_of_the_item_volum};;
    value_format_name: decimal_2
    required_fields: [volume_unit_voleh]
  }

  measure: total_sales_order_org_currency {
    type: sum
    sql: ${net_value_of_the_sales_order_in_document_currency_netwr};;
    value_format_name: decimal_0
  }

  measure: average_volume {
    description: "Automatically includes Volume Unit in the request."
    type: average
    sql: ${volume_of_the_item_volum};;
    value_format_name: decimal_2
    required_fields: [volume_unit_voleh]
  }

  measure: average_sales_order_org_currency {
    type: average
    sql: ${net_value_of_the_sales_order_in_document_currency_netwr};;
    value_format_name: decimal_2
  }

  # measure: total_fulfilled {
  #   type: sum_distinct
  #   sql: ${sales_document_vbeln};;
  #   filters: [document_category_vbtyp: "C",]
  #   value_format_name: decimal_2
  # }

}
