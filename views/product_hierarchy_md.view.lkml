view: product_hierarchy_md {
  sql_table_name: `@{DATASET}.ProductHierarchiesMD`;;

  dimension: product_hierarchy_md_pk {
    primary_key: yes
    hidden: yes
    sql: CONCAT(${client}, ' - ',${hierarchy}, ' - ',${language}) ;;
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: product_category {
    # hidden: yes
    type: string
    sql: ${TABLE}.Description_VTEXT ;;
    link: {
      label: "Product Snapshot"
      url: "/dashboards-next/cortex_data_foundation::product_snapshot?Product+Category={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: hierarchy {
    hidden: yes
    type: string
    sql: ${TABLE}.Hierarchy_PRODH ;;
  }

  dimension: language {
    hidden: yes
    type: string
    sql: ${TABLE}.Language_SPRAS ;;
  }

  dimension: level {
    hidden: yes
    type: string
    sql: ${TABLE}.Level_STUFE ;;
  }
}
