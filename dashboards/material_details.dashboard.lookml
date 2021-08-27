- dashboard: material_details
  title: Material Details
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Navigation Bar
    name: Navigation Bar
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
    listen: {}
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
      Material Number: material_md.material_number
      Material Text: material_md.material_text
    row: 4
    col: 0
    width: 6
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
      Material Number: material_md.material_number
      Material Text: material_md.material_text
    row: 6
    col: 0
    width: 12
    height: 7
  - title: Quantity over Time
    name: Quantity over Time
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_line
    fields: [sales_orders.document_date, sales_orders.total_cumulative_order_quantity]
    sorts: [sales_orders.document_date desc]
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
      Material Number: material_md.material_number
      Material Text: material_md.material_text
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Sales This Year
    name: Sales This Year
    model: sap_operational_reporting
    explore: sales_orders
    type: single_value
    fields: [sales_orders.total_sales_order_org_currency, sales_orders.document_year]
    fill_fields: [sales_orders.document_year]
    filters:
      sales_orders.document_date: 2 years
      sales_orders.is_before_ytd: 'Yes'
    sorts: [sales_orders.document_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${sales_orders.total_sales_order_org_currency}-offset(${sales_orders.total_sales_order_org_currency},1))/offset(${sales_orders.total_sales_order_org_currency},1)",
        label: vs last year, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: vs_last_year, _type_hint: number}]
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
      Material Number: material_md.material_number
      Material Text: material_md.material_text
    row: 4
    col: 6
    width: 6
    height: 2
  - title: Stock vs Pending Deliveries
    name: Stock vs Pending Deliveries
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_grid
    fields: [stock_unrestricted_vs_sales.plant_name, stock_unrestricted_vs_sales.material_text,
      stock_unrestricted_vs_sales.stock_vs_pending_deliveries]
    pivots: [stock_unrestricted_vs_sales.plant_name]
    sorts: [stock_unrestricted_vs_sales.plant_name, stock_unrestricted_vs_sales.stock_vs_pending_deliveries
        desc 7]
    limit: 500
    row_total: right
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
    series_cell_visualizations:
      stock_unrestricted_vs_sales.stock_vs_pending_deliveries:
        is_active: false
    conditional_formatting: [{type: less than, value: 0, background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
      Material Number: material_md.material_number
      Material Text: material_md.material_text
    row: 15
    col: 0
    width: 24
    height: 3
  - title: Orders This Year
    name: Orders This Year
    model: sap_operational_reporting
    explore: sales_orders
    type: single_value
    fields: [sales_orders.total_sales_orders, sales_orders.document_year]
    fill_fields: [sales_orders.document_year]
    filters:
      sales_orders.document_date: 2 years
      sales_orders.is_before_ytd: 'Yes'
    sorts: [sales_orders.document_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${sales_orders.total_sales_orders}-offset(${sales_orders.total_sales_orders},1))/offset(${sales_orders.total_sales_orders},1)",
        label: vs last year, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: vs_last_year, _type_hint: number}]
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
      Material Number: material_md.material_number
      Material Text: material_md.material_text
    row: 4
    col: 12
    width: 6
    height: 2
  - title: Delayed Deliveries
    name: Delayed Deliveries
    model: sap_operational_reporting
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.sales_document, material_md.material_number, material_md.material_text,
      customers_md.customer_name, uom_md.unit_of_measurement_text_maximum10_characters,
      deliveries.delivery_delay, sales_orders.total_cumulative_order_quantity, sales_orders.total_sales_order_org_currency]
    filters:
      deliveries.delivery_delay: ">0"
      customers_md.customer_name: ''
      stock_unrestricted_vs_sales.plant_region: ''
    sorts: [deliveries.delivery_delay desc, sales_orders.total_cumulative_order_quantity
        desc]
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
      Material Number: material_md.material_number
      Material Text: material_md.material_text
    row: 18
    col: 0
    width: 24
    height: 7
  - title: Return Rate
    name: Return Rate
    model: sap_operational_reporting
    explore: sales_orders
    type: single_value
    fields: [deliveries.delivery_return_percentage]
    filters:
      sales_orders.document_date: 7 years
      material_group_md.material_group_name: ''
      sales_organizations.sales_org_name: ''
      customers_md.customer_name: ''
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
    listen:
      Material Number: material_md.material_number
      Material Text: material_md.material_text
    row: 4
    col: 18
    width: 6
    height: 2
  - name: Performance
    type: text
    title_text: Performance
    subtitle_text: <font color="#c1c1c1">Overview of the material performance</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: Stock and Deliveries
    type: text
    title_text: Stock and Deliveries
    subtitle_text: <font color="#c1c1c1">Check if the delayed deliveries correlated
      with low stock or if there is another issue</font>
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 2
  filters:
  - name: Material Number
    title: Material Number
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: sap_operational_reporting
    explore: sales_orders
    listens_to_filters: []
    field: material_md.material_number
  - name: Material Text
    title: Material Text
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: sap_operational_reporting
    explore: sales_orders
    listens_to_filters: []
    field: material_md.material_text
