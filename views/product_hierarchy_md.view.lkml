# The name of this view in Looker is "Product Hierarchy Md"
view: product_hierarchy_md {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lucias-rabia.SAP_REPORTING.ProductHierarchyMD`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Client Mandt" in Explore.

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
      url: "/dashboards-next/42?Product+Category={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: hierarchy {
    # hidden: yes
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

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  # measure: count {
  #   type: count
  #   drill_fields: []
  # }
}
