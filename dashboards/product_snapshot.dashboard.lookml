- dashboard: product_snapshot
  title: Product Snapshot
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: Performance
    type: text
    title_text: Performance
    subtitle_text: <font color="#c1c1c1">Overview of the product performance</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: Stock and Deliveries
    type: text
    title_text: Stock and Deliveries
    subtitle_text: <font color="#c1c1c1">Check if the delayed deliveries correlate
      with low stock or if there are other issues to consider</font>
    body_text: ''
    row: 13
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
  - title: Total Customers
    name: Total Customers
    model: cortex_data_foundation
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
      Product Number: material_md.material_number
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Historical Revenue
    name: Historical Revenue
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_line
    fields: [sales_orders.order_date, sales_orders.total_sales_order_org_currency]
    fill_fields: [sales_orders.order_date]
    filters:
      sales_orders.order_date: before tomorrow
    sorts: [sales_orders.order_date desc]
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
      Product Number: material_md.material_number
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 6
    col: 0
    width: 12
    height: 7
  - title: Orders
    name: Orders
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [sales_orders.total_sales_orders, sales_orders.order_year]
    fill_fields: [sales_orders.order_year]
    filters:
      sales_orders.is_before_ytd: 'Yes'
      sales_orders.order_date: 2 years
    sorts: [sales_orders.order_year desc]
    limit: 500
    column_limit: 50
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
      Product Number: material_md.material_number
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 4
    col: 12
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
      Product Number: material_md.material_number
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 4
    col: 6
    width: 6
    height: 2
  - title: Historical Orders & Order Qtys
    name: Historical Orders & Order Qtys
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_line
    fields: [sales_orders.order_date, sales_orders.total_cumulative_order_quantity,
      sales_orders.total_sales_orders]
    filters:
      sales_orders.order_date: before tomorrow
    sorts: [sales_orders.order_date desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: sales_orders.total_sales_orders,
            id: sales_orders.total_sales_orders, name: Total Sales Orders}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: sales_orders.total_cumulative_order_quantity,
            id: sales_orders.total_cumulative_order_quantity, name: Total Cumulative
              Order Quantity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      sales_orders.total_sales_orders: "#34A853"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Product Number: material_md.material_number
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Delayed Deliveries
    name: Delayed Deliveries
    model: cortex_data_foundation
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
      Product Number: material_md.material_number
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 18
    col: 0
    width: 24
    height: 7
  - title: Product Stock vs Pending Deliveries
    name: Product Stock vs Pending Deliveries
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [material_md.material_text, sales_pending_delivery_per_order_item.total_pending_delivery,
      stock_unrestricted_vs_sales.total_unrestricted_stock, stock_unrestricted_vs_sales.stock_vs_pending_deliveries,
      stock_unrestricted_vs_sales.plant_region]
    pivots: [stock_unrestricted_vs_sales.plant_region]
    filters:
      stock_unrestricted_vs_sales.plant_region: "-NULL"
    sorts: [stock_unrestricted_vs_sales.plant_region, stock_unrestricted_vs_sales.stock_vs_pending_deliveries
        desc 7]
    limit: 500
    column_limit: 50
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
        bold: false, italic: false, strikethrough: false, fields: [stock_unrestricted_vs_sales.stock_vs_pending_deliveries]},
      {type: greater than, value: 0, background_color: "#34A853", font_color: !!null '',
        color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [stock_unrestricted_vs_sales.stock_vs_pending_deliveries]},
      {type: equal to, value: 0, background_color: "#FBBC04", font_color: !!null '',
        color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [stock_unrestricted_vs_sales.stock_vs_pending_deliveries]}]
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
      Product Number: material_md.material_number
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 15
    col: 0
    width: 24
    height: 3
  - title: Returns Rate
    name: Returns Rate
    model: cortex_data_foundation
    explore: sales_orders
    type: single_value
    fields: [deliveries.delivery_return_percentage]
    filters:
      material_group_md.material_group_name: ''
      sales_organizations.sales_org_name: ''
      customers_md.customer_name: ''
      sales_orders.order_date: 7 years
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
      Product Number: material_md.material_number
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 4
    col: 18
    width: 6
    height: 2
  filters:
  - name: Product Category
    title: Product Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: cortex_data_foundation
    explore: sales_orders
    listens_to_filters: []
    field: product_hierarchy_md.product_category
  - name: Product Number
    title: Product Number
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cortex_data_foundation
    explore: sales_orders
    listens_to_filters: []
    field: material_md.material_number
  - name: Product Description
    title: Product Description
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cortex_data_foundation
    explore: sales_orders
    listens_to_filters: []
    field: material_md.material_text
