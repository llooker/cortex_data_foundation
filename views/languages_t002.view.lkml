view: languages_t002 {
  sql_table_name: `@{DATASET}.Languages_T002`;;

  dimension: degree_of_translation_of_language_lahq {
    type: string
    sql: ${TABLE}.DegreeOfTranslationOfLanguage_LAHQ ;;
  }

  dimension: language_key_spras {
    type: string
    sql: ${TABLE}.LanguageKey_SPRAS ;;
  }

  dimension: language_specifications_laspez {
    type: string
    sql: ${TABLE}.LanguageSpecifications_LASPEZ ;;
  }

  dimension: two_character_sap_language_code_laiso {
    type: string
    sql: ${TABLE}.TwoCharacterSapLanguageCode_LAISO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
