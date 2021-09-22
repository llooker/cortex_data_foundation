include: "/models/cortex_data_foundation.model.lkml"

view: top_5_product_category {

  view_label: "Top 5s"

  derived_table: {
    explore_source: sales_orders {
      column: client { field: sales_orders.client }
      column: product_category { field: product_hierarchy_md.product_category }
      column: total_revenue {field: sales_orders.total_sales_order_org_currency}

      derived_column: rank { sql: RANK() OVER (ORDER BY total_revenue DESC) ;;}

      filters: [product_hierarchy_md.product_category: "-NULL"]

      bind_all_filters: yes

      sort: { field: sales_orders.total_sales_order_org_currency desc: yes}

      limit: 5
    }
  }

  dimension: client {
    hidden: yes
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension: product_category {
    hidden: yes
    type: string
    sql: ${TABLE}.product_category ;;
    link: {
      label: "Product Snapshot"
      url: "/dashboards-next/cortex_data_foundation::product_snapshot?Product+Category={{ filterable_value | url_encode }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: total_revenue {
    hidden: yes
    type: number
    sql: ${TABLE}.total_revenue ;;
  }

  dimension: rank {
    hidden: yes
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: product_category_ranked {
    hidden: yes
    order_by_field: rank
    type: string
    sql: ${rank} || ') ' || ${product_category} ;;
  }
}