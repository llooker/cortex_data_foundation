- dashboard: 1_orders_fulfillment
  title: "(1) Orders Fulfillment"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Pending Deliveries
    name: Pending Deliveries
    model: sap_operational_reporting
    explore: sales_fullfillment
    type: looker_grid
    fields: [sales_fullfillment.material_number, sales_fullfillment.material_text,
      sales_fullfillment.delivered_uom, sales_fullfillment.currency, sales_fullfillment.total_net_price,
      sales_fullfillment.total_sales_quantity, sales_fullfillment.total_delivered_quantity,
      sales_fullfillment.total_pending_delivery_quantity, sales_fullfillment.total_delivered_pending_billing]
    filters:
      sales_fullfillment.total_pending_delivery_quantity: ">0"
    sorts: [sales_fullfillment.total_pending_delivery_quantity desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      sales_fullfillment.total_net_price:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    title_hidden: true
    listen: {}
    row: 4
    col: 0
    width: 16
    height: 9
  - name: Pending Deliveries (2)
    type: text
    title_text: Pending Deliveries
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: Late Deliveries
    type: text
    title_text: Late Deliveries
    subtitle_text: ''
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 2
  - title: Top 20 Materials Quantity Pending
    name: Top 20 Materials Quantity Pending
    model: sap_operational_reporting
    explore: sales_fullfillment
    type: looker_column
    fields: [sales_fullfillment.material_number, sales_fullfillment.total_pending_delivery_quantity]
    filters:
      sales_fullfillment.total_pending_delivery_quantity: ">0"
    sorts: [sales_fullfillment.total_pending_delivery_quantity desc]
    limit: 20
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      sales_fullfillment.total_net_price:
        is_active: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    listen: {}
    row: 4
    col: 16
    width: 8
    height: 9
  - title: New Tile
    name: New Tile
    model: sap_operational_reporting
    explore: sales_orders
    type: single_value
    fields: [sales_orders.dash_nav]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Top 20 Delayed Materials
    name: Top 20 Delayed Materials
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_column
    fields: [material_md.material_number, sales_orders.total_volume]
    filters:
      deliveries.delivery_delay: ">0"
    sorts: [sales_orders.total_volume desc]
    limit: 20
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, custom: {
            id: c6355688-c210-4483-a765-0d46830e89cc, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#EA4335", offset: 50},
              {color: "#B31412", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: false, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 15
    col: 16
    width: 8
    height: 9
  - title: Late Deliveries
    name: Late Deliveries (2)
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_grid
    fields: [material_md.material_number, material_md.material_text, material_group_md.material_group_name,
      customers_md.customer_name, sales_orders.volume_unit, deliveries.delivery_delay,
      sales_orders.total_volume, sales_orders.total_sales_order_org_currency]
    filters:
      deliveries.delivery_delay: ">0"
    sorts: [deliveries.delivery_delay desc, sales_orders.total_volume desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, custom: {
            id: c6355688-c210-4483-a765-0d46830e89cc, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#EA4335", offset: 50},
              {color: "#B31412", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: false, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [deliveries.delivery_delay]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    title_hidden: true
    listen: {}
    row: 15
    col: 0
    width: 16
    height: 9
