- dashboard: 0_sales_analytics
  title: "(0) Sales Analytics"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: Top Line Metrics
    type: text
    title_text: Top Line Metrics
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - title: Volumes Sold
    name: Volumes Sold
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.total_volume, sales_orders.volume_unit]
    filters:
      sales_orders.volume_unit: "-NULL"
    sorts: [sales_orders.total_volume desc]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Sales Org Name: sales_organizations.sales_org_name
      Material Group Name: material_group_md.material_group_name
      Customer Name: customers_md.customer_name
      Document Date: sales_orders.document_date
    row: 13
    col: 17
    width: 7
    height: 8
  - title: Average Order Value
    name: Average Order Value
    model: sap_operational_reporting
    explore: sales_orders
    type: single_value
    fields: [sales_orders.average_sales_order_org_currency]
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
      Sales Org Name: sales_organizations.sales_org_name
      Material Group Name: material_group_md.material_group_name
      Customer Name: customers_md.customer_name
      Document Date: sales_orders.document_date
    row: 4
    col: 8
    width: 8
    height: 2
  - title: Sales Org Sales Orders
    name: Sales Org Sales Orders
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_grid
    fields: [sales_organizations.sales_org_name, sales_orders.total_sales_orders,
      sales_orders.total_volume, sales_orders.total_sales_order_org_currency]
    filters: {}
    sorts: [sales_orders.total_sales_order_org_currency desc]
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
      sales_orders.total_sales_orders:
        is_active: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Sales Org Name: sales_organizations.sales_org_name
      Material Group Name: material_group_md.material_group_name
      Customer Name: customers_md.customer_name
      Document Date: sales_orders.document_date
    row: 21
    col: 0
    width: 16
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
      Sales Org Name: sales_organizations.sales_org_name
      Material Group Name: material_group_md.material_group_name
      Customer Name: customers_md.customer_name
      Document Date: sales_orders.document_date
    row: 13
    col: 0
    width: 17
    height: 8
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
      Sales Org Name: sales_organizations.sales_org_name
      Material Group Name: material_group_md.material_group_name
      Customer Name: customers_md.customer_name
      Document Date: sales_orders.document_date
    row: 4
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
      Sales Org Name: sales_organizations.sales_org_name
      Material Group Name: material_group_md.material_group_name
      Customer Name: customers_md.customer_name
      Document Date: sales_orders.document_date
    row: 4
    col: 16
    width: 8
    height: 2
  - title: Total Sales, Year over Year
    name: Total Sales, Year over Year
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_line
    fields: [sales_orders.total_sales_order_org_currency, sales_orders.document_year,
      sales_orders.document_month_name]
    pivots: [sales_orders.document_year]
    fill_fields: [sales_orders.document_year, sales_orders.document_month_name]
    sorts: [sales_orders.document_year desc, sales_orders.total_sales_order_org_currency
        desc 0]
    limit: 500
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Sales Org Name: sales_organizations.sales_org_name
      Material Group Name: material_group_md.material_group_name
      Customer Name: customers_md.customer_name
      Document Date: sales_orders.document_date
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Orders by Day and Material Type
    name: Orders by Day and Material Type
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_line
    fields: [sales_orders.total_sales_orders, material_md.material_type, sales_orders.document_date]
    pivots: [material_md.material_type]
    fill_fields: [sales_orders.document_date]
    filters: {}
    sorts: [sales_orders.total_sales_orders desc 0, material_md.material_type]
    limit: 500
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
      Sales Org Name: sales_organizations.sales_org_name
      Material Group Name: material_group_md.material_group_name
      Customer Name: customers_md.customer_name
      Document Date: sales_orders.document_date
    row: 6
    col: 0
    width: 12
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
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Customer Location
    name: Customer Location
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_map
    fields: [customers_md.count, countries_t005_customer.country_name]
    sorts: [customers_md.count desc]
    limit: 500
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
    listen:
      Sales Org Name: sales_organizations.sales_org_name
      Material Group Name: material_group_md.material_group_name
      Customer Name: customers_md.customer_name
      Document Date: sales_orders.document_date
    row: 21
    col: 16
    width: 8
    height: 7
  filters:
  - name: Sales Org Name
    title: Sales Org Name
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
    field: sales_organizations.sales_org_name
  - name: Material Group Name
    title: Material Group Name
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
    field: material_group_md.material_group_name
  - name: Document Date
    title: Document Date
    type: field_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: sap_operational_reporting
    explore: sales_orders
    listens_to_filters: []
    field: sales_orders.document_date
  - name: Customer Name
    title: Customer Name
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
    field: customers_md.customer_name
