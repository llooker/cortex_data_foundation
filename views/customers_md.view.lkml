view: customers_md {
  sql_table_name: `SAP_REPORTING.CustomersMD`
    ;;
  view_label: "Customers"

  dimension: account_number_fiscal_address_fiskn {
    type: string
    sql: ${TABLE}.AccountNumberFiscalAddress_FISKN ;;
  }

  dimension: account_number_of_vendor_or_creditor_lifnr {
    type: string
    sql: ${TABLE}.AccountNumberOfVendorOrCreditor_LIFNR ;;
  }

  dimension: address_adrnr {
    type: string
    sql: ${TABLE}.Address_ADRNR ;;
  }

  dimension: agency_location_code_alc {
    type: string
    sql: ${TABLE}.AgencyLocationCode_ALC ;;
  }

  dimension: alternative_payer_allowed_xzemp {
    type: string
    sql: ${TABLE}.AlternativePayerAllowed_XZEMP ;;
  }

  dimension: alternative_payer_knrza {
    type: string
    sql: ${TABLE}.AlternativePayer_KNRZA ;;
  }

  dimension: alternative_payer_using_account_number_xknza {
    type: string
    sql: ${TABLE}.AlternativePayerUsingAccountNumber_XKNZA ;;
  }

  dimension: annual_sales_umsa1 {
    type: number
    sql: ${TABLE}.AnnualSales_UMSA1 ;;
  }

  dimension: annual_sales_umsat {
    type: number
    sql: ${TABLE}.AnnualSales_UMSAT ;;
  }

  dimension: assignment_to_hierarchy_hzuor {
    type: string
    sql: ${TABLE}.AssignmentToHierarchy_HZUOR ;;
  }

  dimension: attribute10_katr10 {
    type: string
    sql: ${TABLE}.Attribute10_KATR10 ;;
  }

  dimension: attribute1_katr1 {
    type: string
    sql: ${TABLE}.Attribute1_KATR1 ;;
  }

  dimension: attribute2_katr2 {
    type: string
    sql: ${TABLE}.Attribute2_KATR2 ;;
  }

  dimension: attribute3_katr3 {
    type: string
    sql: ${TABLE}.Attribute3_KATR3 ;;
  }

  dimension: attribute4_katr4 {
    type: string
    sql: ${TABLE}.Attribute4_KATR4 ;;
  }

  dimension: attribute5_katr5 {
    type: string
    sql: ${TABLE}.Attribute5_KATR5 ;;
  }

  dimension: attribute6_katr6 {
    type: string
    sql: ${TABLE}.Attribute6_KATR6 ;;
  }

  dimension: attribute7_katr7 {
    type: string
    sql: ${TABLE}.Attribute7_KATR7 ;;
  }

  dimension: attribute8_katr8 {
    type: string
    sql: ${TABLE}.Attribute8_KATR8 ;;
  }

  dimension: attribute9_katr9 {
    type: string
    sql: ${TABLE}.Attribute9_KATR9 ;;
  }

  dimension: authorization_group_begru {
    type: string
    sql: ${TABLE}.AuthorizationGroup_BEGRU ;;
  }

  dimension: business_purpose_completed_flag_cvp_xblck {
    type: string
    sql: ${TABLE}.BusinessPurposeCompletedFlag_CVP_XBLCK ;;
  }

  dimension: central_billing_block_faksd {
    type: string
    sql: ${TABLE}.CentralBillingBlock_FAKSD ;;
  }

  dimension: central_deletion_block_for_master_record_nodel {
    type: string
    sql: ${TABLE}.CentralDeletionBlockForMasterRecord_NODEL ;;
  }

  dimension: central_deletion_flag_for_master_record_loevm {
    type: string
    sql: ${TABLE}.CentralDeletionFlagForMasterRecord_LOEVM ;;
  }

  dimension: central_delivery_block_for_the_customer_lifsd {
    type: string
    sql: ${TABLE}.CentralDeliveryBlockForTheCustomer_LIFSD ;;
  }

  dimension: central_order_block_for_customer_aufsd {
    type: string
    sql: ${TABLE}.CentralOrderBlockForCustomer_AUFSD ;;
  }

  dimension: central_posting_block_sperr {
    type: string
    sql: ${TABLE}.CentralPostingBlock_SPERR ;;
  }

  dimension: central_sales_block_cassd {
    type: string
    sql: ${TABLE}.CentralSalesBlock_CASSD ;;
  }

  dimension: check_digit_for_the_international_location_number_bubkz {
    type: string
    sql: ${TABLE}.CheckDigitForTheInternationalLocationNumber_BUBKZ ;;
  }

  dimension: city_code_cityc {
    type: string
    sql: ${TABLE}.CityCode_CITYC ;;
  }

  dimension: city_coordinates_locco {
    type: string
    sql: ${TABLE}.CityCoordinates_LOCCO ;;
  }

  dimension: city_ort01 {
    type: string
    sql: ${TABLE}.City_ORT01 ;;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: cnae_cnae {
    type: string
    sql: ${TABLE}.Cnae_CNAE ;;
  }

  dimension: company_id_of_trading_partner_vbund {
    type: string
    sql: ${TABLE}.CompanyIdOfTradingPartner_VBUND ;;
  }

  dimension: company_size_comsize {
    type: string
    sql: ${TABLE}.CompanySize_COMSIZE ;;
  }

  dimension: competitor_dear1 {
    type: string
    sql: ${TABLE}.Competitor_DEAR1 ;;
  }

  dimension: condition_group1_kdkg1 {
    type: string
    sql: ${TABLE}.ConditionGroup1_KDKG1 ;;
  }

  dimension: condition_group2_kdkg2 {
    type: string
    sql: ${TABLE}.ConditionGroup2_KDKG2 ;;
  }

  dimension: condition_group3_kdkg3 {
    type: string
    sql: ${TABLE}.ConditionGroup3_KDKG3 ;;
  }

  dimension: condition_group4_kdkg4 {
    type: string
    sql: ${TABLE}.ConditionGroup4_KDKG4 ;;
  }

  dimension: condition_group5_kdkg5 {
    type: string
    sql: ${TABLE}.ConditionGroup5_KDKG5 ;;
  }

  dimension: country_key_land1 {
    type: string
    sql: ${TABLE}.CountryKey_LAND1 ;;
  }

  dimension: county_code_counc {
    type: string
    sql: ${TABLE}.CountyCode_COUNC ;;
  }

  dimension: created_by_ernam {
    type: string
    sql: ${TABLE}.CreatedBy_ERNAM ;;
  }

  dimension: crt_number_crtn {
    type: string
    sql: ${TABLE}.CrtNumber_CRTN ;;
  }

  dimension: currency_of_sales_figure_uwaer {
    type: string
    sql: ${TABLE}.CurrencyOfSalesFigure_UWAER ;;
  }

  dimension: customer_account_group_ktokd {
    type: string
    sql: ${TABLE}.CustomerAccountGroup_KTOKD ;;
  }

  dimension: customer_cfop_category_cfopc {
    type: string
    sql: ${TABLE}.CustomerCfopCategory_CFOPC ;;
  }

  dimension: customer_classification_kukla {
    type: string
    sql: ${TABLE}.CustomerClassification_KUKLA ;;
  }

  dimension: customer_group_for_substituicao_tributaria_calculation_xsubt {
    type: string
    sql: ${TABLE}.CustomerGroupForSubstituicaoTributariaCalculation_XSUBT ;;
  }

  dimension: customer_is_icms_exempt_xicms {
    type: string
    sql: ${TABLE}.CustomerIsIcmsExempt_XICMS ;;
  }

  dimension: customer_is_ipi_exempt_xxipi {
    type: string
    sql: ${TABLE}.CustomerIsIpiExempt_XXIPI ;;
  }

  dimension: customer_number_kunnr {
    type: string
    sql: ${TABLE}.CustomerNumber_KUNNR ;;
  }

  dimension: customer_type4_dear4 {
    type: string
    sql: ${TABLE}.CustomerType4_DEAR4 ;;
  }

  dimension: data_communication_line_no_datlt {
    type: string
    sql: ${TABLE}.DataCommunicationLineNo_DATLT ;;
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

  dimension_group: date_on_which_the_changes_were_confirmed_updat {
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

  dimension: declaration_regimen_for_piscofins_decregpc {
    type: string
    sql: ${TABLE}.DeclarationRegimenForPiscofins_DECREGPC ;;
  }

  dimension: description_psoo1 {
    type: string
    sql: ${TABLE}.Description_PSOO1 ;;
  }

  dimension: description_psoo2 {
    type: string
    sql: ${TABLE}.Description_PSOO2 ;;
  }

  dimension: description_psoo3 {
    type: string
    sql: ${TABLE}.Description_PSOO3 ;;
  }

  dimension: description_psoo4 {
    type: string
    sql: ${TABLE}.Description_PSOO4 ;;
  }

  dimension: description_psoo5 {
    type: string
    sql: ${TABLE}.Description_PSOO5 ;;
  }

  dimension: differential_reference_code_oidrc {
    type: string
    sql: ${TABLE}.DifferentialReferenceCode_OIDRC ;;
  }

  dimension: district_ort02 {
    type: string
    sql: ${TABLE}.District_ORT02 ;;
  }

  dimension: duns4_duns4 {
    type: string
    sql: ${TABLE}.Duns4_DUNS4 ;;
  }

  dimension: duns_number_duns {
    type: string
    sql: ${TABLE}.DunsNumber_DUNS ;;
  }

  dimension: express_train_station_bahne {
    type: string
    sql: ${TABLE}.ExpressTrainStation_BAHNE ;;
  }

  dimension: fax_number_telfx {
    type: string
    sql: ${TABLE}.FaxNumber_TELFX ;;
  }

  dimension: fee_schedule_fee_schedule {
    type: string
    sql: ${TABLE}.FeeSchedule_FEE_SCHEDULE ;;
  }

  dimension: first_name_psovn {
    type: string
    sql: ${TABLE}.FirstName_PSOVN ;;
  }

  dimension: first_telephone_number_telf1 {
    type: string
    sql: ${TABLE}.FirstTelephoneNumber_TELF1 ;;
  }

  dimension: fiscal_year_variant_periv {
    type: string
    sql: ${TABLE}.FiscalYearVariant_PERIV ;;
  }

  dimension: foreign_national_registration_rne {
    type: string
    sql: ${TABLE}.ForeignNationalRegistration_RNE ;;
  }

  dimension: group_key_konzs {
    type: string
    sql: ${TABLE}.GroupKey_KONZS ;;
  }

  dimension: icms_taxpayer_icmstaxpay {
    type: string
    sql: ${TABLE}.IcmsTaxpayer_ICMSTAXPAY ;;
  }

  dimension: id_for_default_sold_to_party_dear5 {
    type: string
    sql: ${TABLE}.IdForDefaultSoldToParty_DEAR5 ;;
  }

  dimension: id_for_military_use_milve {
    type: string
    sql: ${TABLE}.IdForMilitaryUse_MILVE ;;
  }

  dimension: id_non_military_use_civve {
    type: string
    sql: ${TABLE}.IdNonMilitaryUse_CIVVE ;;
  }

  dimension: indicator_consumer_dear6 {
    type: string
    sql: ${TABLE}.Indicator_Consumer_DEAR6 ;;
  }

  dimension: indicator_for_biochemical_warfare_ccc01 {
    type: string
    sql: ${TABLE}.IndicatorForBiochemicalWarfare_CCC01 ;;
  }

  dimension: indicator_for_missile_technology_ccc04 {
    type: string
    sql: ${TABLE}.IndicatorForMissileTechnology_CCC04 ;;
  }

  dimension: indicator_for_national_security_ccc03 {
    type: string
    sql: ${TABLE}.IndicatorForNationalSecurity_CCC03 ;;
  }

  dimension: indicator_for_nuclear_nonproliferation_ccc02 {
    type: string
    sql: ${TABLE}.IndicatorForNuclearNonproliferation_CCC02 ;;
  }

  dimension: industry_code1_bran1 {
    type: string
    sql: ${TABLE}.IndustryCode1_BRAN1 ;;
  }

  dimension: industry_code2_bran2 {
    type: string
    sql: ${TABLE}.IndustryCode2_BRAN2 ;;
  }

  dimension: industry_code3_bran3 {
    type: string
    sql: ${TABLE}.IndustryCode3_BRAN3 ;;
  }

  dimension: industry_code4_bran4 {
    type: string
    sql: ${TABLE}.IndustryCode4_BRAN4 ;;
  }

  dimension: industry_code5_bran5 {
    type: string
    sql: ${TABLE}.IndustryCode5_BRAN5 ;;
  }

  dimension: industry_key_brsch {
    type: string
    sql: ${TABLE}.IndustryKey_BRSCH ;;
  }

  dimension: industry_main_type_indtyp {
    type: string
    sql: ${TABLE}.IndustryMainType_INDTYP ;;
  }

  dimension: initial_contact_ekont {
    type: string
    sql: ${TABLE}.InitialContact_EKONT ;;
  }

  dimension: inspection_carried_out_by_customer_inspbydebi {
    type: string
    sql: ${TABLE}.InspectionCarriedOutByCustomerINSPBYDEBI ;;
  }

  dimension: inspection_for_adelivery_note_inspatdebi {
    type: string
    sql: ${TABLE}.InspectionForADeliveryNote_INSPATDEBI ;;
  }

  dimension: instruction_key_for_data_medium_exchange_dtaws {
    type: string
    sql: ${TABLE}.InstructionKeyForDataMediumExchange_DTAWS ;;
  }

  dimension: international_location_number_bbbnr {
    type: string
    sql: ${TABLE}.InternationalLocationNumber_BBBNR ;;
  }

  dimension: international_location_number_bbsnr {
    type: string
    sql: ${TABLE}.InternationalLocationNumber_BBSNR ;;
  }

  dimension: issued_by_exp {
    type: string
    sql: ${TABLE}.IssuedBy_EXP ;;
  }

  dimension: language_key_spras {
    type: string
    sql: ${TABLE}.LanguageKey_SPRAS ;;
  }

  dimension: legal_nature_legalnat {
    type: string
    sql: ${TABLE}.LegalNature_LEGALNAT ;;
  }

  dimension: legal_status_gform {
    type: string
    sql: ${TABLE}.LegalStatus_GFORM ;;
  }

  dimension: liable_for_vat_stkzu {
    type: string
    sql: ${TABLE}.LiableForVat_STKZU ;;
  }

  dimension: matchcode_search_mcod1 {
    type: string
    sql: ${TABLE}.MatchcodeSearch_MCOD1 ;;
  }

  dimension: matchcode_search_mcod2 {
    type: string
    sql: ${TABLE}.MatchcodeSearch_MCOD2 ;;
  }

  dimension: matchcode_search_mcod3 {
    type: string
    sql: ${TABLE}.MatchcodeSearch_MCOD3 ;;
  }

  dimension: name1_name1 {
    type: string
    sql: ${TABLE}.Name1_NAME1 ;;
  }

  dimension: name1_pson1 {
    type: string
    sql: ${TABLE}.Name1_PSON1 ;;
  }

  dimension: name2_name2 {
    type: string
    sql: ${TABLE}.Name2_NAME2 ;;
  }

  dimension: name2_pson2 {
    type: string
    sql: ${TABLE}.Name2_PSON2 ;;
  }

  dimension: name3_name3 {
    type: string
    sql: ${TABLE}.Name3_NAME3 ;;
  }

  dimension: name3_pson3 {
    type: string
    sql: ${TABLE}.Name3_PSON3 ;;
  }

  dimension: name4_name4 {
    type: string
    sql: ${TABLE}.Name4_NAME4 ;;
  }

  dimension: name_of_representative_j_1_kfrepre {
    type: string
    sql: ${TABLE}.NameOfRepresentative_J_1KFREPRE ;;
  }

  dimension: natural_person_stkzn {
    type: string
    sql: ${TABLE}.NaturalPerson_STKZN ;;
  }

  dimension: nielsen_id_niels {
    type: string
    sql: ${TABLE}.NielsenId_NIELS ;;
  }

  dimension: one_time_account_xcpdk {
    type: string
    sql: ${TABLE}.OneTimeAccount_XCPDK ;;
  }

  dimension: payment_block_sperz {
    type: string
    sql: ${TABLE}.PaymentBlock_SPERZ ;;
  }

  dimension: payment_office_pmt_office {
    type: string
    sql: ${TABLE}.PaymentOffice_PMT_OFFICE ;;
  }

  dimension: plant_werks {
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: po_box_city_pfort {
    type: string
    sql: ${TABLE}.PoBoxCity_PFORT ;;
  }

  dimension: po_box_pfach {
    type: string
    sql: ${TABLE}.PoBox_PFACH ;;
  }

  dimension: pobox_postal_code_pstl2 {
    type: string
    sql: ${TABLE}.POBoxPostalCode_PSTL2 ;;
  }

  dimension: postal_code_pstlz {
    type: string
    sql: ${TABLE}.PostalCode_PSTLZ ;;
  }

  dimension: processor_group_psofg {
    type: string
    sql: ${TABLE}.ProcessorGroup_PSOFG ;;
  }

  dimension: purchase_order_required_poreqd {
    type: string
    sql: ${TABLE}.PurchaseOrderRequired_POREQD ;;
  }

  dimension: reference_account_group_ktocd {
    type: string
    sql: ${TABLE}.ReferenceAccountGroup_KTOCD ;;
  }

  dimension: region_regio {
    type: string
    sql: ${TABLE}.Region_REGIO ;;
  }

  dimension: regional_market_rpmkr {
    type: string
    sql: ${TABLE}.RegionalMarket_RPMKR ;;
  }

  dimension: report_key_for_data_medium_exchange_dtams {
    type: string
    sql: ${TABLE}.ReportKeyForDataMediumExchange_DTAMS ;;
  }

  dimension_group: rg_issuing_date_rgdate {
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

  dimension: rg_number_rg {
    type: string
    sql: ${TABLE}.RgNumber_RG ;;
  }

  dimension: ric_number_ric {
    type: string
    sql: ${TABLE}.RicNumber_RIC ;;
  }

  dimension: rlabeling_customerplant_group_etikg {
    type: string
    sql: ${TABLE}.RLabeling_CustomerplantGroup_ETIKG ;;
  }

  dimension_group: rne_issuing_date_rnedate {
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

  dimension: sales_partner_dear2 {
    type: string
    sql: ${TABLE}.SalesPartner_DEAR2 ;;
  }

  dimension: sales_prospect_dear3 {
    type: string
    sql: ${TABLE}.SalesProspect_DEAR3 ;;
  }

  dimension: second_telephone_number_telf2 {
    type: string
    sql: ${TABLE}.SecondTelephoneNumber_TELF2 ;;
  }

  dimension: sort_field_sortl {
    type: string
    sql: ${TABLE}.SortField_SORTL ;;
  }

  dimension: state_uf {
    type: string
    sql: ${TABLE}.State_UF ;;
  }

  dimension: status_of_change_authorization_confs {
    type: string
    sql: ${TABLE}.StatusOfChangeAuthorization_CONFS ;;
  }

  dimension: status_of_data_transfer_into_subsequent_release_duefl {
    type: string
    sql: ${TABLE}.StatusOfDataTransferIntoSubsequentRelease_DUEFL ;;
  }

  dimension: street_and_number_stras {
    type: string
    sql: ${TABLE}.StreetAndNumber_STRAS ;;
  }

  dimension: subject_to_equalization_tax_stkza {
    type: string
    sql: ${TABLE}.SubjectToEqualizationTax_STKZA ;;
  }

  dimension: subledger_acct_preprocessing_procedure_psois {
    type: string
    sql: ${TABLE}.SubledgerAcctPreprocessingProcedure_PSOIS ;;
  }

  dimension: suframa_code_suframa {
    type: string
    sql: ${TABLE}.SuframaCode_SUFRAMA ;;
  }

  dimension: tax_declaration_type_tdt {
    type: string
    sql: ${TABLE}.TaxDeclarationType_TDT ;;
  }

  dimension: tax_jurisdiction_txjcd {
    type: string
    sql: ${TABLE}.TaxJurisdiction_TXJCD ;;
  }

  dimension: tax_law_icms_txlw1 {
    type: string
    sql: ${TABLE}.TaxLaw_Icms_TXLW1 ;;
  }

  dimension: tax_law_ipi_txlw2 {
    type: string
    sql: ${TABLE}.TaxLaw_Ipi_TXLW2 ;;
  }

  dimension: tax_number1_stcd1 {
    type: string
    sql: ${TABLE}.TaxNumber1_STCD1 ;;
  }

  dimension: tax_number2_stcd2 {
    type: string
    sql: ${TABLE}.TaxNumber2_STCD2 ;;
  }

  dimension: tax_number3_stcd3 {
    type: string
    sql: ${TABLE}.TaxNumber3_STCD3 ;;
  }

  dimension: tax_number4_stcd4 {
    type: string
    sql: ${TABLE}.TaxNumber4_STCD4 ;;
  }

  dimension: tax_number5_stcd5 {
    type: string
    sql: ${TABLE}.TaxNumber5_STCD5 ;;
  }

  dimension: tax_number_type_stcdt {
    type: string
    sql: ${TABLE}.TaxNumberType_STCDT ;;
  }

  dimension: tax_type_fityp {
    type: string
    sql: ${TABLE}.TaxType_FITYP ;;
  }

  dimension: telebox_number_telbx {
    type: string
    sql: ${TABLE}.TeleboxNumber_TELBX ;;
  }

  dimension: teletex_number_teltx {
    type: string
    sql: ${TABLE}.TeletexNumber_TELTX ;;
  }

  dimension: telex_number_telx1 {
    type: string
    sql: ${TABLE}.TelexNumber_TELX1 ;;
  }

  dimension_group: time_of_last_change_confirmation_uptim {
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
    type: string
    sql: ${TABLE}.Title_ANRED ;;
  }

  dimension: title_psotl {
    type: string
    sql: ${TABLE}.Title_PSOTL ;;
  }

  dimension: train_station_bahns {
    type: string
    sql: ${TABLE}.TrainStation_BAHNS ;;
  }

  dimension: transportation_zone_lzone {
    type: string
    sql: ${TABLE}.TransportationZone_LZONE ;;
  }

  dimension: type_of_business_j_1_kftbus {
    type: string
    sql: ${TABLE}.TypeOfBusiness_J_1KFTBUS ;;
  }

  dimension: type_of_industry_j_1_kftind {
    type: string
    sql: ${TABLE}.TypeOfIndustry_J_1KFTIND ;;
  }

  dimension: uniform_resource_locator_knurl {
    type: string
    sql: ${TABLE}.UniformResourceLocator_KNURL ;;
  }

  dimension: unloading_points_exist_exabl {
    type: string
    sql: ${TABLE}.UnloadingPointsExist_EXABL ;;
  }

  dimension: usage_indicator_abrvw {
    type: string
    sql: ${TABLE}.UsageIndicator_ABRVW ;;
  }

  dimension: vat_registration_number_stceg {
    type: string
    sql: ${TABLE}.VatRegistrationNumber_STCEG ;;
  }

  dimension: working_time_calendar_knazk {
    type: string
    sql: ${TABLE}.WorkingTimeCalendar_KNAZK ;;
  }

  dimension: year_for_which_sales_are_given_umjah {
    type: string
    sql: ${TABLE}.YearForWhichSalesAreGiven_UMJAH ;;
  }

  dimension: year_for_which_the_number_of_employees_is_given_jmjah {
    type: string
    sql: ${TABLE}.YearForWhichTheNumberOfEmployeesIsGiven_JMJAH ;;
  }

  dimension: yearly_number_of_employees_jmzah {
    type: string
    sql: ${TABLE}.YearlyNumberOfEmployees_JMZAH ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
