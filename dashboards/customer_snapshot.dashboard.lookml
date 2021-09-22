- dashboard: customer_snapshot
  title: Customer Snapshot
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">To investigate an order, click on the Sales
      Document for further analysis in the Order Snapshot dashboard</font>
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 2
  - name: Overview
    type: text
    title_text: Overview
    subtitle_text: <font color="#c1c1c1">Historical information about the customer</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
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
  - title: Name
    name: Name
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [customers_md.customer_name, customers_md.count]
    sorts: [customers_md.customer_name]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${customers_md.count}=0
          OR ${customers_md.count}>1,"Multiple Customers",${customers_md.customer_name})',
        label: Customer Name, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: customer_name, _type_hint: string}]
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
    hidden_fields: [customers_md.customer_name, customers_md.count]
    y_axes: []
    listen:
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 4
    col: 0
    width: 12
    height: 2
  - title: Avg Lifetime Sale
    name: Avg Lifetime Sale
    model: cortex_data_foundation
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
    value_format: ''
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 10
    col: 0
    width: 6
    height: 2
  - title: Total Orders
    name: Total Orders
    model: cortex_data_foundation
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
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 8
    col: 0
    width: 6
    height: 2
  - title: Address
    name: Address
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_single_record
    fields: [customers_md.address, customers_md.city, customers_md.postal_code, countries_t005_customer.country_name]
    sorts: [customers_md.city]
    limit: 500
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
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 8
    col: 18
    width: 6
    height: 4
  - title: Location
    name: Location
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_map
    fields: [countries_t005_customer.country_name]
    sorts: [countries_t005_customer.country_name]
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
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 6
    col: 12
    width: 6
    height: 6
  - title: Total Revenue
    name: Total Revenue
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [sales_orders.total_sales_order_org_currency]
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
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 6
    col: 0
    width: 6
    height: 2
  - title: Customer Number
    name: Customer Number
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [customers_md.customer_number, customers_md.count]
    sorts: [customers_md.customer_number]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${customers_md.count}=0
          OR ${customers_md.count}>1,"Multiple Customers",${customers_md.customer_number})',
        label: Customer Number, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: customer_number, _type_hint: string}]
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
    hidden_fields: [customers_md.customer_number, customers_md.count]
    y_axes: []
    listen:
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 4
    col: 12
    width: 12
    height: 2
  - title: Completed Orders
    name: Completed Orders
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.order_date, sales_orders.sales_document, material_md.material_number,
      material_md.material_text, customers_md.customer_name, uom_md.unit_of_measurement_text_maximum10_characters,
      sales_orders.total_cumulative_order_quantity, sales_orders.total_sales_order_org_currency]
    filters:
      sales_pending_delivery_per_order.is_order_delivery_completed: 'Yes'
    sorts: [sales_orders.order_date desc]
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
        strikethrough: false, fields: []}]
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
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 21
    col: 0
    width: 24
    height: 7
  - title: Orders in Progress
    name: Orders in Progress
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.order_date, sales_orders.sales_document, material_md.material_number,
      material_md.material_text, customers_md.customer_name, uom_md.unit_of_measurement_text_maximum10_characters,
      sales_orders.total_cumulative_order_quantity, sales_orders.total_sales_order_org_currency]
    filters:
      sales_pending_delivery_per_order.is_order_delivery_completed: 'No'
    sorts: [sales_orders.order_date desc]
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
        strikethrough: false, fields: []}]
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
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 14
    col: 0
    width: 24
    height: 7
  - title: Avg Sale This Year
    name: Avg Sale This Year
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [sales_orders.average_sales_order_org_currency]
    filters:
      material_group_md.material_group_name: ''
      sales_organizations.sales_org_name: ''
      sales_orders.order_date: this year
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
    value_format: ''
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 10
    col: 6
    width: 6
    height: 2
  - title: Orders
    name: Orders
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [sales_orders.total_sales_orders, sales_orders.order_year]
    fill_fields: [sales_orders.order_year]
    filters:
      sales_organizations.sales_org_name: ''
      material_group_md.material_group_name: ''
      sales_orders.is_before_ytd: 'Yes'
      sales_orders.order_date: 2 years
    sorts: [sales_orders.order_year desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${sales_orders.total_sales_orders}-offset(${sales_orders.total_sales_orders},1))/offset(${sales_orders.total_sales_orders},1)",
        label: YoY, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: yoy, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
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
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 8
    col: 6
    width: 6
    height: 2
  - title: Revenue
    name: Revenue
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [sales_orders.total_sales_order_org_currency, sales_orders.order_year]
    fill_fields: [sales_orders.order_year]
    filters:
      material_group_md.material_group_name: ''
      sales_organizations.sales_org_name: ''
      sales_orders.is_before_ytd: 'Yes'
      sales_orders.order_date: 2 years
    sorts: [sales_orders.order_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${sales_orders.total_sales_order_org_currency}-offset(${sales_orders.total_sales_order_org_currency},1))/offset(${sales_orders.total_sales_order_org_currency},1)",
        label: YoY, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: yoy, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Customer Name: customers_md.customer_name
      Customer Number: customers_md.customer_number
    row: 6
    col: 6
    width: 6
    height: 2
  - title: Returns Rate
    name: Returns Rate
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [deliveries.delivery_return_percentage]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#B31412", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Customer Number: customers_md.customer_number
    row: 6
    col: 18
    width: 6
    height: 2
  filters:
  - name: Customer Name
    title: Customer Name
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
    field: customers_md.customer_name
  - name: Customer Number
    title: Customer Number
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
    field: customers_md.customer_number
