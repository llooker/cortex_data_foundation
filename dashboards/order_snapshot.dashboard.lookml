- dashboard: order_snapshot
  title: Order Snapshot
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Navigation Bar
    name: Navigation Bar
    model: cortex_data_foundation
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
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Customer Name
    name: Customer Name
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [customers_md.customer_name]
    filters:
      customers_md.customer_name: ''
      customers_md.customer_number: ''
    sorts: [customers_md.customer_name]
    limit: 500
    column_limit: 50
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
    hidden_fields: []
    y_axes: []
    listen:
      Sales Order: sales_orders.sales_document
    row: 4
    col: 0
    width: 13
    height: 2
  - title: Customer Number
    name: Customer Number
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [customers_md.customer_number]
    filters:
      customers_md.customer_name: ''
      customers_md.customer_number: ''
    sorts: [customers_md.customer_number]
    limit: 500
    column_limit: 50
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
    hidden_fields: []
    y_axes: []
    listen:
      Sales Order: sales_orders.sales_document
    row: 6
    col: 0
    width: 13
    height: 2
  - title: Country
    name: Country
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_map
    fields: [countries_t005_delivery.country_name]
    filters:
      customers_md.customer_name: ''
      customers_md.customer_number: ''
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
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
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    listen:
      Sales Order: sales_orders.sales_document
    row: 6
    col: 13
    width: 10
    height: 7
  - title: Order Items Details
    name: Order Items Details
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.sales_document, sales_orders.item, sales_orders.order_date,
      deliveries.planned_goods_movement_date, deliveries.actual_goods_movement_date,
      material_md.material_number, material_md.material_text, sales_pending_delivery_per_order_item.is_order_item_delivery_completed,
      stock_unrestricted_vs_sales.total_pending_delivery, sales_orders.total_cumulative_order_quantity]
    filters:
      deliveries.is_return: 'No'
    sorts: [sales_orders.sales_document desc]
    limit: 500
    column_limit: 50
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
    series_labels:
      sales_pending_delivery_per_order_item.is_order_item_delivery_completed: Delivery
        Completed?
    series_cell_visualizations:
      stock_unrestricted_vs_sales.total_pending_delivery:
        is_active: true
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Sales Order: sales_orders.sales_document
    row: 15
    col: 0
    width: 24
    height: 10
  - title: All Deliveries Completed?
    name: All Deliveries Completed?
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [sales_pending_delivery_per_order.is_order_delivery_completed]
    fill_fields: [sales_pending_delivery_per_order.is_order_delivery_completed]
    sorts: [sales_pending_delivery_per_order.is_order_delivery_completed]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${sales_pending_delivery_per_order.is_order_delivery_completed}=yes,1,0)',
        label: Delivered 0/1, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: delivered_01, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '"Yes";-;"No"'
    conditional_formatting: [{type: equal to, value: 0, background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: equal
          to, value: 1, background_color: "#34A853", font_color: !!null '', color_application: {
          collection_id: google, palette_id: google-sequential-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [sales_pending_delivery_per_order.is_order_delivery_completed]
    y_axes: []
    listen:
      Sales Order: sales_orders.sales_document
    row: 4
    col: 13
    width: 10
    height: 2
  - title: Returned Items Details
    name: Returned Items Details
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.sales_document, sales_orders.item, sales_orders.order_date,
      deliveries.planned_goods_movement_date, deliveries.actual_goods_movement_date,
      material_md.material_number, material_md.material_text, stock_unrestricted_vs_sales.total_pending_delivery,
      sales_orders.total_cumulative_order_quantity]
    filters:
      deliveries.is_return: 'Yes'
    sorts: [sales_orders.sales_document desc]
    limit: 500
    column_limit: 50
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Sales Order: sales_orders.sales_document
    row: 25
    col: 0
    width: 24
    height: 7
  - name: Delivery Information
    type: text
    title_text: Delivery Information
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: Item Details
    type: text
    title_text: Item Details
    subtitle_text: <font color="#c1c1c1">Lists the individual items and deliveries
      making up the order</font>
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 2
  - title: Delivery Address
    name: Delivery Address
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_single_record
    fields: [customers_md_ship_to.address, customers_md_ship_to.city, customers_md_ship_to.postal_code,
      countries_t005_delivery.country_name]
    filters:
      customers_md.customer_name: ''
      customers_md.customer_number: ''
    sorts: [customers_md_ship_to.address desc]
    limit: 500
    column_limit: 50
    show_view_names: false
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
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    listen:
      Sales Order: sales_orders.sales_document
    row: 8
    col: 0
    width: 13
    height: 5
  filters:
  - name: Sales Order
    title: Sales Order
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cortex_data_foundation
    explore: sales_orders
    listens_to_filters: []
    field: sales_orders.sales_document
