view: customers_md {
  sql_table_name: `@{DATASET}.CustomersMD`
    ;;
  view_label: "Customers"

  dimension: customers_pk {
    hidden: yes
    primary_key: yes
    sql: CONCAT(${client}, " - ",${customer_number}) ;;
  }

  dimension: account_number_fiscal_address {
    hidden: yes
    type: string
    sql: ${TABLE}.AccountNumberFiscalAddress_FISKN ;;
  }

  dimension: account_number_of_vendor_or_creditor {
    hidden: yes
    type: string
    sql: ${TABLE}.AccountNumberOfVendorOrCreditor_LIFNR ;;
  }

  dimension: address {
    group_label: "Address"
    type: string
    sql: ${TABLE}.Address_ADRNR ;;
  }

  dimension: agency_location_code {
    hidden: yes
    type: string
    sql: ${TABLE}.AgencyLocationCode_ALC ;;
  }

  dimension: alternative_payer_allowed {
    hidden: yes
    type: string
    sql: ${TABLE}.AlternativePayerAllowed_XZEMP ;;
  }

  dimension: alternative_payer {
    hidden: yes
    type: string
    sql: ${TABLE}.AlternativePayer_KNRZA ;;
  }

  dimension: alternative_payer_using_account_number {
    hidden: yes
    type: string
    sql: ${TABLE}.AlternativePayerUsingAccountNumber_XKNZA ;;
  }

  dimension: annual_sales_umsa1 {
    hidden: yes
    type: number
    sql: ${TABLE}.AnnualSales_UMSA1 ;;
  }

  dimension: annual_sales_umsat {
    hidden: yes
    type: number
    sql: ${TABLE}.AnnualSales_UMSAT ;;
  }

  dimension: assignment_to_hierarchy {
    hidden: yes
    type: string
    sql: ${TABLE}.AssignmentToHierarchy_HZUOR ;;
  }

  dimension: attribute1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute1_KATR1 ;;
  }

  dimension: attribute2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute2_KATR2 ;;
  }

  dimension: attribute3 {
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute3_KATR3 ;;
  }

  dimension: attribute4 {
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute4_KATR4 ;;
  }

  dimension: attribute5 {
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute5_KATR5 ;;
  }

  dimension: attribute6 {
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute6_KATR6 ;;
  }

  dimension: attribute7 {
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute7_KATR7 ;;
  }

  dimension: attribute8 {
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute8_KATR8 ;;
  }

  dimension: attribute9 {
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute9_KATR9 ;;
  }

  dimension: attribute10{
    hidden: yes
    type: string
    sql: ${TABLE}.Attribute10_KATR10 ;;
  }

  dimension: authorization_group {
    hidden: yes
    type: string
    sql: ${TABLE}.AuthorizationGroup_BEGRU ;;
  }

  dimension: business_purpose_completed_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.BusinessPurposeCompletedFlag_CVP_XBLCK ;;
  }

  dimension: central_billing_block {
    hidden: yes
    type: string
    sql: ${TABLE}.CentralBillingBlock_FAKSD ;;
  }

  dimension: central_deletion_block_for_master_record {
    hidden: yes
    type: string
    sql: ${TABLE}.CentralDeletionBlockForMasterRecord_NODEL ;;
  }

  dimension: central_deletion_flag_for_master_record {
    hidden: yes
    type: string
    sql: ${TABLE}.CentralDeletionFlagForMasterRecord_LOEVM ;;
  }

  dimension: central_delivery_block_for_the_customer {
    hidden: yes
    type: string
    sql: ${TABLE}.CentralDeliveryBlockForTheCustomer_LIFSD ;;
  }

  dimension: central_order_block_for_customer {
    hidden: yes
    type: string
    sql: ${TABLE}.CentralOrderBlockForCustomer_AUFSD ;;
  }

  dimension: central_posting_block {
    hidden: yes
    type: string
    sql: ${TABLE}.CentralPostingBlock_SPERR ;;
  }

  dimension: central_sales_block {
    hidden: yes
    type: string
    sql: ${TABLE}.CentralSalesBlock_CASSD ;;
  }

  dimension: check_digit_for_the_international_location_number {
    hidden: yes
    type: string
    sql: ${TABLE}.CheckDigitForTheInternationalLocationNumber_BUBKZ ;;
  }

  dimension: city_code {
    group_label: "Address"
    type: string
    sql: ${TABLE}.CityCode_CITYC ;;
  }

  dimension: city_coordinates {
    hidden: yes
    type: string
    sql: ${TABLE}.CityCoordinates_LOCCO ;;
  }

  dimension: city {
    group_label: "Address"
    type: string
    sql: ${TABLE}.City_ORT01 ;;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: cnae {
    hidden: yes
    type: string
    sql: ${TABLE}.Cnae_CNAE ;;
  }

  dimension: company_id_of_trading_partner {
    hidden: yes
    type: string
    sql: ${TABLE}.CompanyIdOfTradingPartner_VBUND ;;
  }

  dimension: company_size {
    hidden: yes
    type: string
    sql: ${TABLE}.CompanySize_COMSIZE ;;
  }

  dimension: competitor {
    hidden: yes
    type: string
    sql: ${TABLE}.Competitor_DEAR1 ;;
  }

  dimension: condition_group1 {
    hidden: yes
    type: string
    sql: ${TABLE}.ConditionGroup1_KDKG1 ;;
  }

  dimension: condition_group2 {
    hidden: yes
    type: string
    sql: ${TABLE}.ConditionGroup2_KDKG2 ;;
  }

  dimension: condition_group3 {
    hidden: yes
    type: string
    sql: ${TABLE}.ConditionGroup3_KDKG3 ;;
  }

  dimension: condition_group4 {
    hidden: yes
    type: string
    sql: ${TABLE}.ConditionGroup4_KDKG4 ;;
  }

  dimension: condition_group5 {
    hidden: yes
    type: string
    sql: ${TABLE}.ConditionGroup5_KDKG5 ;;
  }

  dimension: country_key {
    hidden: yes
    type: string
    sql: ${TABLE}.CountryKey_LAND1 ;;
  }

  dimension: county_code {
    group_label: "Address"
    type: string
    sql: ${TABLE}.CountyCode_COUNC ;;
  }

  dimension: created_by {
    hidden: yes
    type: string
    sql: ${TABLE}.CreatedBy_ERNAM ;;
  }

  dimension: crt_number {
    hidden: yes
    type: string
    sql: ${TABLE}.CrtNumber_CRTN ;;
  }

  dimension: currency_of_sales_figure {
    hidden: yes
    type: string
    sql: ${TABLE}.CurrencyOfSalesFigure_UWAER ;;
  }

  dimension: customer_account_group {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerAccountGroup_KTOKD ;;
  }

  dimension: customer_cfop_category {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerCfopCategory_CFOPC ;;
  }

  dimension: customer_classification {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerClassification_KUKLA ;;
  }

  dimension: customer_group_for_substituicao_tributaria_calculation {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerGroupForSubstituicaoTributariaCalculation_XSUBT ;;
  }

  dimension: customer_is_icms_exempt {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerIsIcmsExempt_XICMS ;;
  }

  dimension: customer_is_ipi_exempt {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerIsIpiExempt_XXIPI ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}.CustomerNumber_KUNNR ;;
    link: {
      label: "Customer Snapshot"
      url: "/dashboards-next/cortex_data_foundation::customer_snapshot?Customer%20Number={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: customer_type4 {
    hidden: yes
    type: string
    sql: ${TABLE}.CustomerType4_DEAR4 ;;
  }

  dimension: data_communication_line_no {
    hidden: yes
    type: string
    sql: ${TABLE}.DataCommunicationLineNo_DATLT ;;
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

  dimension_group: changes_confirmed {
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
    sql: ${TABLE}.DateOnWhichTheChangesWereConfirmed_UPDAT ;;
  }

  dimension: declaration_regimen_for_piscofins {
    hidden: yes
    type: string
    sql: ${TABLE}.DeclarationRegimenForPiscofins_DECREGPC ;;
  }

  dimension: description_psoo1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Description_PSOO1 ;;
  }

  dimension: description_psoo2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Description_PSOO2 ;;
  }

  dimension: description_psoo3 {
    hidden: yes
    type: string
    sql: ${TABLE}.Description_PSOO3 ;;
  }

  dimension: description_psoo4 {
    hidden: yes
    type: string
    sql: ${TABLE}.Description_PSOO4 ;;
  }

  dimension: description_psoo5 {
    hidden: yes
    type: string
    sql: ${TABLE}.Description_PSOO5 ;;
  }

  dimension: differential_reference_code {
    hidden: yes
    type: string
    sql: ${TABLE}.DifferentialReferenceCode_OIDRC ;;
  }

  dimension: district {
    hidden: yes
    type: string
    sql: ${TABLE}.District_ORT02 ;;
  }

  dimension: duns4 {
    hidden: yes
    type: string
    sql: ${TABLE}.Duns4_DUNS4 ;;
  }

  dimension: duns_number {
    type: string
    sql: ${TABLE}.DunsNumber_DUNS ;;
  }

  dimension: express_train_station {
    hidden: yes
    type: string
    sql: ${TABLE}.ExpressTrainStation_BAHNE ;;
  }

  dimension: fax_number {
    hidden: yes
    type: string
    sql: ${TABLE}.FaxNumber_TELFX ;;
  }

  dimension: fee_schedule {
    hidden: yes
    type: string
    sql: ${TABLE}.FeeSchedule_FEE_SCHEDULE ;;
  }

  dimension: first_name {
    hidden: yes
    type: string
    sql: ${TABLE}.FirstName_PSOVN ;;
  }

  dimension: first_telephone_number {
    hidden: yes
    type: string
    sql: ${TABLE}.FirstTelephoneNumber_TELF1 ;;
  }

  dimension: fiscal_year_variant {
    hidden: yes
    type: string
    sql: ${TABLE}.FiscalYearVariant_PERIV ;;
  }

  dimension: foreign_national_registration {
    hidden: yes
    type: string
    sql: ${TABLE}.ForeignNationalRegistration_RNE ;;
  }

  dimension: group_key {
    hidden: yes
    type: string
    sql: ${TABLE}.GroupKey_KONZS ;;
  }

  dimension: icms_taxpayer {
    hidden: yes
    type: string
    sql: ${TABLE}.IcmsTaxpayer_ICMSTAXPAY ;;
  }

  dimension: id_for_default_sold_to_party {
    hidden: yes
    type: string
    sql: ${TABLE}.IdForDefaultSoldToParty_DEAR5 ;;
  }

  dimension: id_for_military_use {
    hidden: yes
    type: string
    sql: ${TABLE}.IdForMilitaryUse_MILVE ;;
  }

  dimension: id_non_military_use {
    hidden: yes
    type: string
    sql: ${TABLE}.IdNonMilitaryUse_CIVVE ;;
  }

  dimension: indicator_consumer {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_Consumer_DEAR6 ;;
  }

  dimension: indicator_for_biochemical_warfare {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForBiochemicalWarfare_CCC01 ;;
  }

  dimension: indicator_for_missile_technology {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForMissileTechnology_CCC04 ;;
  }

  dimension: indicator_for_national_security {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForNationalSecurity_CCC03 ;;
  }

  dimension: indicator_for_nuclear_nonproliferation {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorForNuclearNonproliferation_CCC02 ;;
  }

  dimension: industry_code1 {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustryCode1_BRAN1 ;;
  }

  dimension: industry_code2 {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustryCode2_BRAN2 ;;
  }

  dimension: industry_code3 {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustryCode3_BRAN3 ;;
  }

  dimension: industry_code4 {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustryCode4_BRAN4 ;;
  }

  dimension: industry_code5 {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustryCode5_BRAN5 ;;
  }

  dimension: industry_key {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustryKey_BRSCH ;;
  }

  dimension: industry_main_type {
    hidden: yes
    type: string
    sql: ${TABLE}.IndustryMainType_INDTYP ;;
  }

  dimension: initial_contact {
    hidden: yes
    type: string
    sql: ${TABLE}.InitialContact_EKONT ;;
  }

  dimension: inspection_carried_out_by_customer {
    hidden: yes
    type: string
    sql: ${TABLE}.InspectionCarriedOutByCustomerINSPBYDEBI ;;
  }

  dimension: inspection_for_adelivery_note {
    hidden: yes
    type: string
    sql: ${TABLE}.InspectionForADeliveryNote_INSPATDEBI ;;
  }

  dimension: instruction_key_for_data_medium_exchange {
    hidden: yes
    type: string
    sql: ${TABLE}.InstructionKeyForDataMediumExchange_DTAWS ;;
  }

  dimension: international_location_number_bbbnr {
    hidden: yes
    type: string
    sql: ${TABLE}.InternationalLocationNumber_BBBNR ;;
  }

  dimension: international_location_number_bbsnr {
    hidden: yes
    type: string
    sql: ${TABLE}.InternationalLocationNumber_BBSNR ;;
  }

  dimension: issued_by {
    hidden: yes
    type: string
    sql: ${TABLE}.IssuedBy_EXP ;;
  }

  dimension: language_key {
    hidden: yes
    type: string
    sql: ${TABLE}.LanguageKey_SPRAS ;;
  }

  dimension: legal_nature {
    hidden: yes
    type: string
    sql: ${TABLE}.LegalNature_LEGALNAT ;;
  }

  dimension: legal_status {
    hidden: yes
    type: string
    sql: ${TABLE}.LegalStatus_GFORM ;;
  }

  dimension: liable_for_vat {
    hidden: yes
    type: string
    sql: ${TABLE}.LiableForVat_STKZU ;;
  }

  dimension: matchcode_search_mcod1 {
    hidden: yes
    type: string
    sql: ${TABLE}.MatchcodeSearch_MCOD1 ;;
  }

  dimension: matchcode_search_mcod2 {
    hidden: yes
    type: string
    sql: ${TABLE}.MatchcodeSearch_MCOD2 ;;
  }

  dimension: matchcode_search_mcod3 {
    hidden: yes
    type: string
    sql: ${TABLE}.MatchcodeSearch_MCOD3 ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.Name1_NAME1 ;;
    link: {
      label: "Customer Snapshot"
      url: "/dashboards-next/cortex_data_foundation::customer_snapshot?Customer%20Name={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
    link: {
      label: "Order Fulfilment for Customer"
      url: "/dashboards-next/cortex_data_foundation::order_fulfillment?Customer%20Name={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: name1_pson1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Name1_PSON1 ;;
  }

  dimension: name2_name2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Name2_NAME2 ;;
  }

  dimension: name2_pson2 {
    hidden: yes
    type: string
    sql: ${TABLE}.Name2_PSON2 ;;
  }

  dimension: name3_name3 {
    hidden: yes
    type: string
    sql: ${TABLE}.Name3_NAME3 ;;
  }

  dimension: name3_pson3 {
    hidden: yes
    type: string
    sql: ${TABLE}.Name3_PSON3 ;;
  }

  dimension: name4_name4 {
    hidden: yes
    type: string
    sql: ${TABLE}.Name4_NAME4 ;;
  }

  dimension: name_of_representative {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfRepresentative_J_1KFREPRE ;;
  }

  dimension: natural_person {
    hidden: yes
    type: string
    sql: ${TABLE}.NaturalPerson_STKZN ;;
  }

  dimension: nielsen_id {
    hidden: yes
    type: string
    sql: ${TABLE}.NielsenId_NIELS ;;
  }

  dimension: one_time_account {
    hidden: yes
    type: string
    sql: ${TABLE}.OneTimeAccount_XCPDK ;;
  }

  dimension: payment_block {
    hidden: yes
    type: string
    sql: ${TABLE}.PaymentBlock_SPERZ ;;
  }

  dimension: payment_office {
    hidden: yes
    type: string
    sql: ${TABLE}.PaymentOffice_PMT_OFFICE ;;
  }

  dimension: plant {
    hidden: yes
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: po_box_city {
    hidden: yes
    type: string
    sql: ${TABLE}.PoBoxCity_PFORT ;;
  }

  dimension: po_box {
    hidden: yes
    type: string
    sql: ${TABLE}.PoBox_PFACH ;;
  }

  dimension: pobox_postal_code{
    hidden: yes
    type: string
    sql: ${TABLE}.POBoxPostalCode_PSTL2 ;;
  }

  dimension: postal_code {
    group_label: "Address"
    type: string
    sql: ${TABLE}.PostalCode_PSTLZ ;;
  }

  dimension: processor_group {
    hidden: yes
    type: string
    sql: ${TABLE}.ProcessorGroup_PSOFG ;;
  }

  dimension: purchase_order_required {
    hidden: yes
    type: string
    sql: ${TABLE}.PurchaseOrderRequired_POREQD ;;
  }

  dimension: reference_account_group {
    hidden: yes
    type: string
    sql: ${TABLE}.ReferenceAccountGroup_KTOCD ;;
  }

  dimension: region {
    group_label: "Address"
    type: string
    sql: ${TABLE}.Region_REGIO ;;
    # map_layer_name: us_states
  }

  dimension: regional_market {
    hidden: yes
    type: string
    sql: ${TABLE}.RegionalMarket_RPMKR ;;
  }

  dimension: report_key_for_data_medium_exchange {
    hidden: yes
    type: string
    sql: ${TABLE}.ReportKeyForDataMediumExchange_DTAMS ;;
  }

  dimension_group: rg_issuing {
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
    sql: ${TABLE}.RgIssuingDate_RGDATE ;;
  }

  dimension: rg_number {
    hidden: yes
    type: string
    sql: ${TABLE}.RgNumber_RG ;;
  }

  dimension: ric_number {
    hidden: yes
    type: string
    sql: ${TABLE}.RicNumber_RIC ;;
  }

  dimension: rlabeling_customerplant_group {
    hidden: yes
    type: string
    sql: ${TABLE}.RLabeling_CustomerplantGroup_ETIKG ;;
  }

  dimension_group: rne_issuing {
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
    sql: ${TABLE}.RneIssuingDate_RNEDATE ;;
  }

  dimension: sales_partner {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesPartner_DEAR2 ;;
  }

  dimension: sales_prospect {
    hidden: yes
    type: string
    sql: ${TABLE}.SalesProspect_DEAR3 ;;
  }

  dimension: second_telephone_number {
    hidden: yes
    type: string
    sql: ${TABLE}.SecondTelephoneNumber_TELF2 ;;
  }

  dimension: sort_field {
    hidden: yes
    type: string
    sql: ${TABLE}.SortField_SORTL ;;
  }

  dimension: state {
    group_label: "Address"
    type: string
    sql: ${TABLE}.State_UF ;;
  }

  dimension: status_of_change_authorization {
    hidden: yes
    type: string
    sql: ${TABLE}.StatusOfChangeAuthorization_CONFS ;;
  }

  dimension: status_of_data_transfer_into_subsequent_release {
    hidden: yes
    type: string
    sql: ${TABLE}.StatusOfDataTransferIntoSubsequentRelease_DUEFL ;;
  }

  dimension: street_and_number {
    hidden: yes
    type: string
    sql: ${TABLE}.StreetAndNumber_STRAS ;;
  }

  dimension: subject_to_equalization_tax {
    hidden: yes
    type: string
    sql: ${TABLE}.SubjectToEqualizationTax_STKZA ;;
  }

  dimension: subledger_acct_preprocessing_procedure {
    hidden: yes
    type: string
    sql: ${TABLE}.SubledgerAcctPreprocessingProcedure_PSOIS ;;
  }

  dimension: suframa_code {
    hidden: yes
    type: string
    sql: ${TABLE}.SuframaCode_SUFRAMA ;;
  }

  dimension: tax_declaration_type {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxDeclarationType_TDT ;;
  }

  dimension: tax_jurisdiction {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxJurisdiction_TXJCD ;;
  }

  dimension: tax_law_icms {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxLaw_Icms_TXLW1 ;;
  }

  dimension: tax_law_ipi {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxLaw_Ipi_TXLW2 ;;
  }

  dimension: tax_number1 {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxNumber1_STCD1 ;;
  }

  dimension: tax_number2 {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxNumber2_STCD2 ;;
  }

  dimension: tax_number3 {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxNumber3_STCD3 ;;
  }

  dimension: tax_number4 {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxNumber4_STCD4 ;;
  }

  dimension: tax_number5 {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxNumber5_STCD5 ;;
  }

  dimension: tax_number_type {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxNumberType_STCDT ;;
  }

  dimension: tax_type {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxType_FITYP ;;
  }

  dimension: telebox_number {
    hidden: yes
    type: string
    sql: ${TABLE}.TeleboxNumber_TELBX ;;
  }

  dimension: teletex_number {
    hidden: yes
    type: string
    sql: ${TABLE}.TeletexNumber_TELTX ;;
  }

  dimension: telex_number {
    hidden: yes
    type: string
    sql: ${TABLE}.TelexNumber_TELX1 ;;
  }

  dimension_group: time_of_last_change_confirmation {
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
    sql: ${TABLE}.TimeOfLastChangeConfirmation_UPTIM ;;
  }

  dimension: title_anred {
    hidden: yes
    type: string
    sql: ${TABLE}.Title_ANRED ;;
  }

  dimension: title_psotl {
    hidden: yes
    type: string
    sql: ${TABLE}.Title_PSOTL ;;
  }

  dimension: train_station {
    hidden: yes
    type: string
    sql: ${TABLE}.TrainStation_BAHNS ;;
  }

  dimension: transportation_zone {
    hidden: yes
    type: string
    sql: ${TABLE}.TransportationZone_LZONE ;;
  }

  dimension: type_of_business {
    hidden: yes
    type: string
    sql: ${TABLE}.TypeOfBusiness_J_1KFTBUS ;;
  }

  dimension: type_of_industry {
    hidden: yes
    type: string
    sql: ${TABLE}.TypeOfIndustry_J_1KFTIND ;;
  }

  dimension: uniform_resource_locator {
    hidden: yes
    type: string
    sql: ${TABLE}.UniformResourceLocator_KNURL ;;
  }

  dimension: unloading_points_exist {
    hidden: yes
    type: string
    sql: ${TABLE}.UnloadingPointsExist_EXABL ;;
  }

  dimension: usage_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.UsageIndicator_ABRVW ;;
  }

  dimension: vat_registration_number {
    hidden: yes
    type: string
    sql: ${TABLE}.VatRegistrationNumber_STCEG ;;
  }

  dimension: working_time_calendar {
    hidden: yes
    type: string
    sql: ${TABLE}.WorkingTimeCalendar_KNAZK ;;
  }

  dimension: year_for_which_sales_are_given {
    hidden: yes
    type: string
    sql: ${TABLE}.YearForWhichSalesAreGiven_UMJAH ;;
  }

  dimension: year_for_which_the_number_of_employees_is_given {
    hidden: yes
    type: string
    sql: ${TABLE}.YearForWhichTheNumberOfEmployeesIsGiven_JMJAH ;;
  }

  dimension: yearly_number_of_employees {
    hidden: yes
    type: string
    sql: ${TABLE}.YearlyNumberOfEmployees_JMZAH ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_number, customer_name, countries_t005_customer.country_name]
  }
}
