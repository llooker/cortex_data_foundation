view: vendors {
  sql_table_name: `SAP_REPORTING.Vendors`
    ;;

  dimension: account_numberof_master_record_of_tax_office_responsible {
    type: string
    sql: ${TABLE}.AccountNumberofMasterRecordofTaxOfficeResponsible ;;
  }

  dimension: account_number_of_the_alternative_payee {
    type: string
    sql: ${TABLE}.AccountNumberoftheAlternativePayee ;;
  }

  dimension: activity_code_for_social_insurance {
    type: string
    sql: ${TABLE}.ActivityCodeforSocialInsurance ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: address_group {
    type: string
    sql: ${TABLE}.AddressGroup ;;
  }

  dimension: address_number {
    type: string
    sql: ${TABLE}.AddressNumber ;;
  }

  dimension: address_timezone {
    type: string
    sql: ${TABLE}.AddressTimezone ;;
  }

  dimension: adr_city {
    type: string
    sql: ${TABLE}.AdrCity ;;
  }

  dimension: adr_district {
    type: string
    sql: ${TABLE}.AdrDistrict ;;
  }

  dimension: adr_name1 {
    type: string
    sql: ${TABLE}.AdrName1 ;;
  }

  dimension: adr_name2 {
    type: string
    sql: ${TABLE}.AdrName2 ;;
  }

  dimension: adr_name3 {
    type: string
    sql: ${TABLE}.AdrName3 ;;
  }

  dimension: adr_name4 {
    type: string
    sql: ${TABLE}.AdrName4 ;;
  }

  dimension: adr_region {
    type: string
    sql: ${TABLE}.AdrRegion ;;
  }

  dimension: adr_tax_jurisdiction {
    type: string
    sql: ${TABLE}.AdrTaxJurisdiction ;;
  }

  dimension: adr_title {
    type: string
    sql: ${TABLE}.AdrTitle ;;
  }

  dimension: alt_payee_flag {
    type: string
    sql: ${TABLE}.AltPayeeFlag ;;
  }

  dimension: authorization_group {
    type: string
    sql: ${TABLE}.AuthorizationGroup ;;
  }

  dimension: building {
    type: string
    sql: ${TABLE}.Building ;;
  }

  dimension: capital_amount {
    type: number
    sql: ${TABLE}.CapitalAmount ;;
  }

  dimension: carrier_confirmation_is_expected {
    type: string
    sql: ${TABLE}.Carrierconfirmationisexpected ;;
  }

  dimension: central_deletion_flag_for_master_record {
    type: string
    sql: ${TABLE}.CentralDeletionFlagforMasterRecord ;;
  }

  dimension: central_deletion_block_for_master_record {
    type: string
    sql: ${TABLE}.Centraldeletionblockformasterrecord ;;
  }

  dimension: centrally_imposed_purchasing_block {
    type: string
    sql: ${TABLE}.Centrallyimposedpurchasingblock ;;
  }

  dimension: central_posting_block {
    type: string
    sql: ${TABLE}.Centralpostingblock ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: city_postal {
    type: string
    sql: ${TABLE}.CityPostal ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: cnae {
    type: string
    sql: ${TABLE}.CNAE ;;
  }

  dimension: company_id_of_trading_partner {
    type: string
    sql: ${TABLE}.CompanyIDoftradingpartner ;;
  }

  dimension: company_postal_code {
    type: string
    sql: ${TABLE}.CompanyPostalCode ;;
  }

  dimension: company_size {
    type: string
    sql: ${TABLE}.CompanySize ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: country_key {
    type: string
    sql: ${TABLE}.CountryKey ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: county_1 {
    type: string
    sql: ${TABLE}.County_1 ;;
  }

  dimension: crcnumber {
    type: string
    sql: ${TABLE}.CRCnumber ;;
  }

  dimension: creation_language {
    type: string
    sql: ${TABLE}.CreationLanguage ;;
  }

  dimension: credit_information_number {
    type: string
    sql: ${TABLE}.Creditinformationnumber ;;
  }

  dimension: crt_number {
    type: string
    sql: ${TABLE}.CRTNumber ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}.CustomerNumber ;;
  }

  dimension_group: date_of_birth_of_the_person_subject_to_withholding_tax {
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
    sql: ${TABLE}.Dateofbirthofthepersonsubjecttowithholdingtax ;;
  }

  dimension_group: date_on_which_the_changes_were_confirmed {
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
    sql: ${TABLE}.DateonWhichtheChangesWereConfirmed ;;
  }

  dimension: declaration_regimen_for_pis {
    type: string
    sql: ${TABLE}.DeclarationRegimenforPIS ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.District ;;
  }

  dimension: equalization_tax_flag {
    type: string
    sql: ${TABLE}.EqualizationTaxFlag ;;
  }

  dimension: extension {
    type: string
    sql: ${TABLE}.Extension ;;
  }

  dimension: external_manufacturer_codename_or_number {
    type: string
    sql: ${TABLE}.Externalmanufacturercodenameornumber ;;
  }

  dimension: factory_calendar_key {
    type: string
    sql: ${TABLE}.Factorycalendarkey ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}.FaxNumber ;;
  }

  dimension: first_telephone_number {
    type: string
    sql: ${TABLE}.Firsttelephonenumber ;;
  }

  dimension: fiscal_addr_number {
    type: string
    sql: ${TABLE}.FiscalAddrNumber ;;
  }

  dimension: floor {
    type: string
    sql: ${TABLE}.Floor ;;
  }

  dimension: foreign_national_registration {
    type: string
    sql: ${TABLE}.ForeignNationalRegistration ;;
  }

  dimension: forwarding_agent_freight_group {
    type: string
    sql: ${TABLE}.Forwardingagentfreightgroup ;;
  }

  dimension: function_that_will_be_blocked {
    type: string
    sql: ${TABLE}.FunctionThatWillBeBlocked ;;
  }

  dimension: group_key {
    type: string
    sql: ${TABLE}.Groupkey ;;
  }

  dimension: house_number {
    type: string
    sql: ${TABLE}.HouseNumber ;;
  }

  dimension: house_number2 {
    type: string
    sql: ${TABLE}.HouseNumber2 ;;
  }

  dimension: house_number_and_street {
    type: string
    sql: ${TABLE}.Housenumberandstreet ;;
  }

  dimension: icms_taxpayer {
    type: string
    sql: ${TABLE}.ICMSTaxpayer ;;
  }

  dimension: industry_main_type {
    type: string
    sql: ${TABLE}.IndustryMainType ;;
  }

  dimension: industry_key {
    type: string
    sql: ${TABLE}.Industrykey ;;
  }

  dimension: international_location_number1 {
    type: string
    sql: ${TABLE}.Internationallocationnumber1 ;;
  }

  dimension: international_location_number2 {
    type: string
    sql: ${TABLE}.Internationallocationnumber2 ;;
  }

  dimension: isr_subscriber_number {
    type: string
    sql: ${TABLE}.ISRSubscriberNumber ;;
  }

  dimension: issued_by {
    type: string
    sql: ${TABLE}.Issuedby ;;
  }

  dimension: key_for_the_sex_of_the_person_subject_to_withholding_tax {
    type: string
    sql: ${TABLE}.KeyfortheSexofthePersonSubjecttoWithholdingTax ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: language_key {
    type: string
    sql: ${TABLE}.LanguageKey ;;
  }

  dimension_group: last_review {
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
    sql: ${TABLE}.Lastreview ;;
  }

  dimension: legal_nature {
    type: string
    sql: ${TABLE}.LegalNature ;;
  }

  dimension: liable_for_vat {
    type: string
    sql: ${TABLE}.LiableforVAT ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  dimension: microcompany_indicator {
    type: string
    sql: ${TABLE}.Microcompanyindicator ;;
  }

  dimension: name1 {
    type: string
    sql: ${TABLE}.Name1 ;;
  }

  dimension: name2 {
    type: string
    sql: ${TABLE}.Name2 ;;
  }

  dimension: name3 {
    type: string
    sql: ${TABLE}.Name3 ;;
  }

  dimension: name4 {
    type: string
    sql: ${TABLE}.Name4 ;;
  }

  dimension: name_text {
    type: string
    sql: ${TABLE}.NameText ;;
  }

  dimension: name_of_representative {
    type: string
    sql: ${TABLE}.NameofRepresentative ;;
  }

  dimension: natural_person {
    type: string
    sql: ${TABLE}.NaturalPerson ;;
  }

  dimension: one_timer_flag {
    type: string
    sql: ${TABLE}.OneTimerFlag ;;
  }

  dimension: payment_block {
    type: string
    sql: ${TABLE}.PaymentBlock ;;
  }

  dimension: place_of_birth_of_the_person_subject_to_withholding_tax {
    type: string
    sql: ${TABLE}.Placeofbirthofthepersonsubjecttowithholdingtax ;;
  }

  dimension: po_box {
    type: string
    sql: ${TABLE}.POBox ;;
  }

  dimension: po_box_post_code {
    type: string
    sql: ${TABLE}.POBoxPostCode ;;
  }

  dimension: po_box_postal_code {
    type: string
    sql: ${TABLE}.POBoxPostalCode ;;
  }

  dimension: po_box_city {
    type: string
    sql: ${TABLE}.POBoxcity ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: profession {
    type: string
    sql: ${TABLE}.Profession ;;
  }

  dimension: ref_group_one_timer {
    type: string
    sql: ${TABLE}.RefGroupOneTimer ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: registered_for_social_insurance {
    type: string
    sql: ${TABLE}.RegisteredforSocialInsurance ;;
  }

  dimension_group: rg_issue {
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
    sql: ${TABLE}.RGIssueDate ;;
  }

  dimension: rg_number {
    type: string
    sql: ${TABLE}.RGNumber ;;
  }

  dimension: ric_number {
    type: string
    sql: ${TABLE}.RICNumber ;;
  }

  dimension_group: rne_issue {
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
    sql: ${TABLE}.RNEIssueDate ;;
  }

  dimension: room_number {
    type: string
    sql: ${TABLE}.RoomNumber ;;
  }

  dimension: search_term1 {
    type: string
    sql: ${TABLE}.SearchTerm1 ;;
  }

  dimension: search_term2 {
    type: string
    sql: ${TABLE}.SearchTerm2 ;;
  }

  dimension: second_telephone_number {
    type: string
    sql: ${TABLE}.Secondtelephonenumber ;;
  }

  dimension: service_agent_procedure_group {
    type: string
    sql: ${TABLE}.Serviceagentproceduregroup ;;
  }

  dimension: sort_field {
    type: string
    sql: ${TABLE}.Sortfield ;;
  }

  dimension: standard_carrier_access_code {
    type: string
    sql: ${TABLE}.Standardcarrieraccesscode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: status_of_change_authorization {
    type: string
    sql: ${TABLE}.StatusofChangeAuthorization ;;
  }

  dimension: status_of_data_transfer_into_subsequent_release {
    type: string
    sql: ${TABLE}.StatusofDataTransferintoSubsequentRelease ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
  }

  dimension: tax_base_in_percentage {
    type: string
    sql: ${TABLE}.TaxBaseinPercentage ;;
  }

  dimension: tax_declaration_type {
    type: string
    sql: ${TABLE}.TaxDeclarationType ;;
  }

  dimension: tax_jurisdiction {
    type: string
    sql: ${TABLE}.TaxJurisdiction ;;
  }

  dimension: tax_number1 {
    type: string
    sql: ${TABLE}.TaxNumber1 ;;
  }

  dimension: tax_number2 {
    type: string
    sql: ${TABLE}.TaxNumber2 ;;
  }

  dimension: tax_number3 {
    type: string
    sql: ${TABLE}.TaxNumber3 ;;
  }

  dimension: tax_number4 {
    type: string
    sql: ${TABLE}.TaxNumber4 ;;
  }

  dimension: tax_number5 {
    type: string
    sql: ${TABLE}.TaxNumber5 ;;
  }

  dimension: tax_number_type {
    type: string
    sql: ${TABLE}.TaxNumberType ;;
  }

  dimension: tax_number_at_responsible_tax_authority {
    type: string
    sql: ${TABLE}.TaxNumberatResponsibleTaxAuthority ;;
  }

  dimension: tax_split {
    type: string
    sql: ${TABLE}.TaxSplit ;;
  }

  dimension: tax_type {
    type: string
    sql: ${TABLE}.Taxtype ;;
  }

  dimension: tel_number {
    type: string
    sql: ${TABLE}.TelNumber ;;
  }

  dimension: teletex_number {
    type: string
    sql: ${TABLE}.Teletexnumber ;;
  }

  dimension: telex_number {
    type: string
    sql: ${TABLE}.Telexnumber ;;
  }

  dimension: terms__of_liability {
    type: string
    sql: ${TABLE}.TermsofLiability ;;
  }

  dimension_group: timeof_last_change_confirmation {
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
    sql: ${TABLE}.TimeofLastChangeConfirmation ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: train_station {
    type: string
    sql: ${TABLE}.Trainstation ;;
  }

  dimension: transportation_service_agent {
    type: string
    sql: ${TABLE}.transportationserviceagent ;;
  }

  dimension: transportation_zone_to_or_from_which_the_goods_are_delivered {
    type: string
    sql: ${TABLE}.Transportationzonetoorfromwhichthegoodsaredelivered ;;
  }

  dimension: type_of_business {
    type: string
    sql: ${TABLE}.TypeofBusiness ;;
  }

  dimension: type_of_industry {
    type: string
    sql: ${TABLE}.TypeofIndustry ;;
  }

  dimension: uniform_resource_locator {
    type: string
    sql: ${TABLE}.UniformResourceLocator ;;
  }

  dimension_group: validity_date_of_certification {
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
    sql: ${TABLE}.Validitydateofcertification ;;
  }

  dimension: vat_registration_number {
    type: string
    sql: ${TABLE}.VATRegistrationNumber ;;
  }

  dimension: vendor_number {
    type: string
    sql: ${TABLE}.VendorNumber ;;
  }

  dimension: vendor_account_group {
    type: string
    sql: ${TABLE}.Vendoraccountgroup ;;
  }

  dimension: vendor_indicator_relevant_for_proof_of_delivery {
    type: string
    sql: ${TABLE}.Vendorindicatorrelevantforproofofdelivery ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
