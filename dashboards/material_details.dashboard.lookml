- dashboard: 2_material_details
  title: "(2) Material Details"
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
    listen:
      Material Number Matnr: sales_fullfillment.material_number
      Material Text Maktx: sales_fullfillment.material_text
    row: 11
    col: 0
    width: 24
    height: 7
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
    hidden_fields: []
    y_axes: []
    listen:
      Material Number Matnr: material_md.material_number
      Material Text Maktx: material_md.material_text
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Customer Count
    name: Customer Count
    model: sap_operational_reporting
    explore: sales_orders
    type: single_value
    fields: [customers_md.count]
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
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Material Number Matnr: material_md.material_number
      Material Text Maktx: material_md.material_text
    row: 2
    col: 0
    width: 8
    height: 2
  - title: Sales Orders
    name: Sales Orders
    model: sap_operational_reporting
    explore: sales_orders
    type: single_value
    fields: [sales_orders.total_sales_orders]
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
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Material Number Matnr: material_md.material_number
      Material Text Maktx: material_md.material_text
    row: 2
    col: 8
    width: 8
    height: 2
  - title: Total Sales This Year
    name: Total Sales This Year
    model: sap_operational_reporting
    explore: sales_orders
    type: single_value
    fields: [sales_orders.total_sales_order_org_currency]
    filters:
      sales_orders.document_date: This year
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
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Material Number Matnr: material_md.material_number
      Material Text Maktx: material_md.material_text
    row: 2
    col: 16
    width: 8
    height: 2
  - title: Orders over Time
    name: Orders over Time
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_line
    fields: [sales_orders.total_sales_orders, sales_orders.document_date]
    fill_fields: [sales_orders.document_date]
    sorts: [sales_orders.total_sales_orders desc]
    limit: 500
    column_limit: 50
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Material Number Matnr: material_md.material_number
      Material Text Maktx: material_md.material_text
    row: 4
    col: 0
    width: 12
    height: 7
  - title: Delayed Deliveries
    name: Delayed Deliveries
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
    listen:
      Material Number Matnr: material_md.material_number
      Material Text Maktx: material_md.material_text
    row: 18
    col: 0
    width: 24
    height: 7
  - title: Volume over Time
    name: Volume over Time
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_line
    fields: [sales_orders.total_volume, sales_orders.document_date, sales_orders.volume_unit]
    pivots: [sales_orders.volume_unit]
    sorts: [sales_orders.document_date desc, sales_orders.volume_unit]
    limit: 5000
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
    show_null_points: false
    interpolation: linear
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Material Number Matnr: material_md.material_number
      Material Text Maktx: material_md.material_text
    row: 4
    col: 12
    width: 12
    height: 7
  filters:
  - name: Material Number Matnr
    title: Material Number Matnr
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: sap_operational_reporting
    explore: sales_orders
    listens_to_filters: []
    field: material_md.material_number
  - name: Material Text Maktx
    title: Material Text Maktx
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: sap_operational_reporting
    explore: sales_orders
    listens_to_filters: []
    field: material_md.material_text
