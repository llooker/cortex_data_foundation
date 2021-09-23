view: countries_t005 {
  sql_table_name: `@{DATASET}.Countries_T005`;;

  dimension: countries_t005_pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${client}, " - ", ${country_key}, " - ", ${rule_for_checking_postal_check_account_number_field});;
  }

  dimension: alternative_country_key {
    hidden: yes
    type: string
    sql: ${TABLE}.AlternativeCountryKey_LANDA ;;
  }

  dimension: bank_account_number_length {
    hidden: yes
    type: string
    sql: ${TABLE}.BankAccountNumberLength_LNBKN ;;
  }

  dimension: bank_number_length {
    hidden: yes
    type: string
    sql: ${TABLE}.BankNumberLength_LNBLZ ;;
  }

  dimension: chart_of_depreciaton_for_asset_valuation {
    hidden: yes
    type: string
    sql: ${TABLE}.ChartOfDepreciatonForAssetValuation_AFAPL ;;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: country_currency {
    hidden: yes
    type: string
    sql: ${TABLE}.CountryCurrency_WAERS ;;
  }

  dimension: country_grouping_for_shipping_schedule {
    hidden: yes
    type: string
    sql: ${TABLE}.CountryGroupingForShippingSchedule_LANDGRP_VP ;;
  }

  dimension: country_iso_code {
    hidden: yes
    type: string
    sql: ${TABLE}.CountryIsoCode_INTCA ;;
  }

  dimension: country_key {
    hidden: yes
    type: string
    sql: ${TABLE}.CountryKey_LAND1 ;;
  }

  dimension: country_name {
    group_label: "Address"
    hidden: no
    type: string
    sql: ${TABLE}.CountryName_LANDX ;;
    map_layer_name: countries
  }

  dimension: country_version_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.CountryVersionFlag_XLAND ;;
  }

  dimension: currency_key_of_the_hard_currency {
    hidden: yes
    type: string
    sql: ${TABLE}.CurrencyKeyOfTheHardCurrency_CURHA ;;
  }

  dimension: currency_key_of_the_index_based_currency {
    hidden: yes
    type: string
    sql: ${TABLE}.CurrencyKeyOfTheIndexBasedCurrency_CURIN ;;
  }

  dimension: date_format {
    hidden: yes
    type: string
    sql: ${TABLE}.DateFormat_DATFM ;;
  }

  dimension: decimal_point_format {
    hidden: yes
    type: string
    sql: ${TABLE}.DecimalPointFormat_XDEZP ;;
  }

  dimension: duevo_nationality {
    hidden: yes
    type: string
    sql: ${TABLE}.Duevo_Nationality_LANDD ;;
  }

  dimension: exchange_rate_type_for_translation_into_country_currency {
    hidden: yes
    type: string
    sql: ${TABLE}.ExchangeRateTypeForTranslationIntoCountryCurrency_KURST ;;
  }

  dimension: flag_city_file_address_check {
    hidden: yes
    type: string
    sql: ${TABLE}.Flag_CityFileAddressCheck_XREGS ;;
  }

  dimension: flag_po_box_postal_code_required {
    hidden: yes
    type: string
    sql: ${TABLE}.Flag_PoBoxPostalCodeRequired_XPLPF ;;
  }

  dimension: flag_print_country_name_in_foreign_addresses {
    hidden: yes
    type: string
    sql: ${TABLE}.Flag_PrintCountryNameInForeignAddresses_XADDR ;;
  }

  dimension: flag_street_address_postal_code_required_entry {
    hidden: yes
    type: string
    sql: ${TABLE}.Flag_StreetAddressPostalCodeRequiredEntry_XPLZS ;;
  }

  dimension: flag_street_specific_postal_code_city_file {
    hidden: yes
    type: string
    sql: ${TABLE}.FlagStreetSpecificPostalCode__cityFile___XPLST ;;
  }

  dimension: formatting_routine_key_for_printing_addresses {
    hidden: yes
    type: string
    sql: ${TABLE}.FormattingRoutineKeyForPrintingAddresses_ADDRS ;;
  }

  dimension: indicator_base_amount_for_tax_is_net_of_discount {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_BaseAmountForTaxIsNetOfDiscount_XMWSN ;;
  }

  dimension: indicator_discount_base_amount_is_the_net_value {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DiscountBaseAmountIsTheNetValue_XSKFN ;;
  }

  dimension: indicator_display_capital_goods_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_DisplayCapitalGoodsIndicator_XXINVE ;;
  }

  dimension: indicator_european_union_member {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_EuropeanUnionMember_XEGLD ;;
  }

  dimension: indicator_post_net_book_value_for_retirement {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorPostNetBookValueForRetirement_KZRBWB ;;
  }

  dimension: indicator_transfer_down_payments_from_previous_years {
    hidden: yes
    type: string
    sql: ${TABLE}.IndicatorTransferDownPaymentsFromPreviousYears_XANZUM ;;
  }

  dimension: indicator_use_check_module_for_bank_fields {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_UseCheckModuleForBankFields_XPRBK ;;
  }

  dimension: indicator_use_check_module_for_tax_fields_etc {
    hidden: yes
    type: string
    sql: ${TABLE}.Indicator_UseCheckModuleForTaxFieldsEtc_XPRSO ;;
  }

  dimension: intrastat_code {
    hidden: yes
    type: string
    sql: ${TABLE}.IntrastatCode_INTCN ;;
  }

  dimension: iso_country_code3_char {
    hidden: yes
    type: string
    sql: ${TABLE}.IsoCountryCode3Char_INTCA3 ;;
  }

  dimension: iso_country_code_numeric3_characters {
    hidden: yes
    type: string
    sql: ${TABLE}.IsoCountryCodeNumeric3Characters_INTCN3 ;;
  }

  dimension: language_key {
    hidden: yes
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: length_of_bank_key {
    hidden: yes
    type: string
    sql: ${TABLE}.LengthOfBankKey_LNBKS ;;
  }

  dimension: maximum_low_value_asset_amount{
    hidden: yes
    type: number
    sql: ${TABLE}.MaximumLowValueAssetAmount_GWGWRT ;;
  }

  dimension: name_of_the_bank_key {
    hidden: yes
    type: string
    sql: ${TABLE}.NameOfTheBankKey_BNKEY ;;
  }

  dimension: net_book_value_for_changeover_of_depreciation_method {
    hidden: yes
    type: number
    sql: ${TABLE}.NetBookValueForChangeoverOfDepreciationMethod_UMRWRT ;;
  }

  dimension: payment_period_for_bill_of_exchange {
    hidden: yes
    type: string
    sql: ${TABLE}.PaymentPeriodForBillOfExchange_WECHF ;;
  }

  dimension: permitted_input_length_for_tax_number2 {
    hidden: yes
    type: string
    sql: ${TABLE}.PermittedInputLengthForTaxNumber2_LNST2 ;;
  }

  dimension: permitted_input_length_for_tax_number3 {
    hidden: yes
    type: string
    sql: ${TABLE}.PermittedInputLengthForTaxNumber3_LNST3 ;;
  }

  dimension: permitted_input_length_for_tax_number4 {
    hidden: yes
    type: string
    sql: ${TABLE}.PermittedInputLengthForTaxNumber4_LNST4 ;;
  }

  dimension: permitted_input_length_for_tax_number5 {
    hidden: yes
    type: string
    sql: ${TABLE}.PermittedInputLengthForTaxNumber5_LNST5 ;;
  }

  dimension: permitted_input_length_for_tax_number1 {
    hidden: yes
    type: string
    sql: ${TABLE}.PermittedInputLengthForTaxNumbre1_LNST1 ;;
  }

  dimension: post_office_bank_current_account_number_length {
    hidden: yes
    type: string
    sql: ${TABLE}.PostOfficeBankCurrentAccountNumberLength_LNPSK ;;
  }

  dimension: postal_code_length {
    hidden: yes
    type: string
    sql: ${TABLE}.PostalCodeLength_LNPLZ ;;
  }

  dimension: procedure__pricing {
    hidden: yes
    type: string
    sql: ${TABLE}.Procedure__pricing_KALSM ;;
  }

  dimension: rule_for_checking_bank_account_number_field {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingBankAccountNumberField_PRBKN ;;
  }

  dimension: rule_for_checking_bank_key_field {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingBankKeyField_PRBKS ;;
  }

  dimension: rule_for_checking_bank_number_field {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingBankNumberField_PRBLZ ;;
  }

  dimension: rule_for_checking_postal_check_account_number_field {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingPostalCheckAccountNumberField_PRPSK ;;
  }

  dimension: rule_for_checking_tax_code1_field {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingTaxCode1Field_PRST1 ;;
  }

  dimension: rule_for_checking_tax_code2_field {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingTaxCode2Field_PRST2 ;;
  }

  dimension: rule_for_checking_tax_code3_field {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingTaxCode3Field_PRST3 ;;
  }

  dimension: rule_for_checking_tax_code4_field {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingTaxCode4Field_PRST4 ;;
  }

  dimension: rule_for_checking_tax_code5_field{
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingTaxCode5Field_PRST5 ;;
  }

  dimension: rule_for_checking_vat_registration_number_field {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForCheckingVatRegistrationNumberField_PRUIN ;;
  }

  dimension: rule_for_the_postal_code_field_check {
    hidden: yes
    type: string
    sql: ${TABLE}.RuleForThePostalCodeFieldCheck_PRPLZ ;;
  }

  dimension: short_name_for_foreign_trade_statistics {
    hidden: yes
    type: string
    sql: ${TABLE}.ShortNameForForeignTradeStatistics_LKVRZ ;;
  }

  dimension: standard_name_format {
    hidden: yes
    type: string
    sql: ${TABLE}.StandardNameFormat_NMFMT ;;
  }

  dimension: super_region_per_country {
    hidden: yes
    type: string
    sql: ${TABLE}.SuperRegionPerCountry_SUREG ;;
  }

  dimension: taxes_at_individual_service_level {
    hidden: yes
    type: string
    sql: ${TABLE}.TaxesAtIndividualServiceLevel_KZSRV ;;
  }

  dimension: vat_registration_number_length {
    hidden: yes
    type: string
    sql: ${TABLE}.VatRegistrationNumberLength_UINLN ;;
  }

  dimension: vehicle_country_key {
    hidden: yes
    type: string
    sql: ${TABLE}.VehicleCountryKey_LANDK ;;
  }

  dimension: withholding_tax_certificate_numbering_concepts{
    hidden: yes
    type: string
    sql: ${TABLE}.WithholdingTaxCertificateNumbering_Concepts_CTNCONCEPT ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }

}
