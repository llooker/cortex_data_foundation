- dashboard: orders_fulfillment
  title: Orders Fulfillment
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Late Deliveries
    name: Late Deliveries
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.order_date, customers_md.customer_name, sales_orders.sales_document,
      material_md.material_text, deliveries.delivery_delay, stock_unrestricted_vs_sales.plant_region,
      sales_orders.total_cumulative_order_quantity, sales_orders.total_sales_order_org_currency]
    filters:
      deliveries.delivery_delay: ">0"
    sorts: [deliveries.delivery_delay desc, sales_orders.total_cumulative_order_quantity
        desc]
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
    listen:
      Customer Name: customers_md.customer_name
      Plant Region: stock_unrestricted_vs_sales.plant_region
    row: 15
    col: 0
    width: 16
    height: 9
  - name: Pending Deliveries
    type: text
    title_text: Pending Deliveries
    subtitle_text: <font color="#c1c1c1">Overview of all the deliveries that are pending</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: Late Deliveries (2)
    type: text
    title_text: Late Deliveries
    subtitle_text: <font color="#c1c1c1">These deliveries are delayed, make sure that
      the customers are aware of the delay and consider further action if the customer
      is high value</font>
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 2
  - title: Top 5 Delayed Products by Revenue
    name: Top 5 Delayed Products by Revenue
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_column
    fields: [material_md.material_text, sales_orders.total_sales_order_org_currency,
      sales_pending_delivery_per_order_item.total_pending_delivery, sales_orders.total_cumulative_order_quantity]
    filters:
      deliveries.delivery_delay: ">0"
    sorts: [pending_revenue desc]
    limit: 5000
    dynamic_fields: [{category: table_calculation, expression: "(${sales_pending_delivery_per_order_item.total_pending_delivery}/${sales_orders.total_cumulative_order_quantity})*${sales_orders.total_sales_order_org_currency}",
        label: Pending Revenue, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: pending_revenue, _type_hint: number}]
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
    limit_displayed_rows: true
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
    y_axes: []
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
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
    hidden_fields: []
    listen:
      Customer Name: customers_md.customer_name
      Plant Region: stock_unrestricted_vs_sales.plant_region
    row: 15
    col: 16
    width: 8
    height: 9
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
  - title: Pending Deliveries
    name: Pending Deliveries (2)
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.order_date, customers_md.customer_name, sales_orders.sales_document,
      material_md.material_text, sales_orders.total_cumulative_order_quantity, sales_pending_delivery_per_order_item.total_pending_delivery,
      sales_orders.total_sales_order_org_currency]
    filters:
      sales_pending_delivery_per_order_item.is_order_item_delivery_completed: 'No'
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
      Plant Region: stock_unrestricted_vs_sales.plant_region
    row: 4
    col: 0
    width: 16
    height: 9
  - title: Top 5 Pending Deliveries by Revenue
    name: Top 5 Pending Deliveries by Revenue
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_column
    fields: [sales_pending_delivery_per_order_item.total_pending_delivery, sales_orders.total_cumulative_order_quantity,
      sales_orders.total_sales_order_org_currency, sales_orders.sales_document, material_md.material_text]
    filters:
      sales_pending_delivery_per_order_item.is_order_item_delivery_completed: 'No'
    sorts: [revenue_pending desc]
    limit: 5000
    dynamic_fields: [{category: table_calculation, expression: "(${sales_pending_delivery_per_order_item.total_pending_delivery}/${sales_orders.total_cumulative_order_quantity})*${sales_orders.total_sales_order_org_currency}",
        label: Revenue Pending, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: revenue_pending, _type_hint: number}]
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
    limit_displayed_rows: true
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
    y_axes: []
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
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
    hidden_fields: [sales_orders.total_cumulative_order_quantity, sales_orders.total_sales_order_org_currency]
    listen:
      Customer Name: customers_md.customer_name
      Plant Region: stock_unrestricted_vs_sales.plant_region
    row: 4
    col: 16
    width: 8
    height: 9
  - title: Customers with Delayed Deliveries
    name: Customers with Delayed Deliveries
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [customers_md.customer_name, sales_pending_delivery_per_order_item.total_pending_delivery,
      sales_orders.total_sales_order_org_currency]
    filters:
      deliveries.delivery_delay: ">0"
    sorts: [sales_pending_delivery_per_order_item.total_pending_delivery desc]
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
    series_cell_visualizations:
      sales_pending_delivery_per_order_item.total_pending_delivery:
        is_active: true
        palette:
          palette_id: ee46d511-804e-9723-a4cc-4f95c414b1c1
          collection_id: google
          custom_colors:
          - "#ffffff"
          - "#EA4335"
          - "#B31412"
    conditional_formatting: []
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
      Plant Region: stock_unrestricted_vs_sales.plant_region
    row: 24
    col: 0
    width: 12
    height: 9
  - title: Plants with Delayed Deliveries
    name: Plants with Delayed Deliveries
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [sales_pending_delivery_per_order_item.total_pending_delivery, sales_orders.total_sales_order_org_currency,
      sales_orders.plant, stock_unrestricted_vs_sales.plant_region]
    filters:
      deliveries.delivery_delay: ">0"
    sorts: [sales_pending_delivery_per_order_item.total_pending_delivery desc]
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
    series_cell_visualizations:
      sales_pending_delivery_per_order_item.total_pending_delivery:
        is_active: false
        palette:
          palette_id: ee46d511-804e-9723-a4cc-4f95c414b1c1
          collection_id: google
          custom_colors:
          - "#ffffff"
          - "#EA4335"
          - "#B31412"
    conditional_formatting: []
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
      Plant Region: stock_unrestricted_vs_sales.plant_region
    row: 24
    col: 12
    width: 12
    height: 9
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
  - name: Plant Region
    title: Plant Region
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
    field: stock_unrestricted_vs_sales.plant_region