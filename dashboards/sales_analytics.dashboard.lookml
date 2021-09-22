- dashboard: sales_analytics
  title: Sales Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: Top Line Metrics
    type: text
    title_text: Top Line Metrics
    subtitle_text: <font color="#c1c1c1">How is my business performing within the
      selected period?</font>
    body_text: |-
      <font color="#c1c1c1"><center><strong>Recommended Action ?</strong>
      If something looks amiss, scroll down for more detailed insight.</center></font>
    row: 2
    col: 0
    width: 24
    height: 2
  - name: Sales & Customer Breakdown
    type: text
    title_text: Sales & Customer Breakdown
    subtitle_text: <font color="#c1c1c1">Who are my top customers and my top selling
      organizations?</font>
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 2
  - name: Product Breakdown
    type: text
    title_text: Product Breakdown
    subtitle_text: <font color="#c1c1c1">Identify over/under performing materials
      and which ones are at risk of running out of stock</font>
    body_text: ''
    row: 29
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: <font color="#c1c1c1">If a product is out of stock, click on the
      name for further analysis in the Product Snapshot dashboard</font>
    body_text: ''
    row: 40
    col: 0
    width: 24
    height: 2
  - title: Total Sales Orders
    name: Total Sales Orders
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
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 4
    col: 0
    width: 5
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
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 4
    col: 10
    width: 4
    height: 2
  - title: Avg Sale Amount
    name: Avg Sale Amount
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
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 4
    col: 5
    width: 5
    height: 2
  - title: Weekly Orders by Product Category (Top 5)
    name: Weekly Orders by Product Category (Top 5)
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_line
    fields: [sales_orders.total_sales_orders, sales_orders.order_week, top_5_product_category.product_category]
    pivots: [top_5_product_category.product_category]
    fill_fields: [sales_orders.order_week]
    filters: {}
    sorts: [sales_orders.total_sales_orders desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: []
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 6
    col: 0
    width: 16
    height: 7
  - title: Sales Orders by Organization
    name: Sales Orders by Organization
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.sales_organization, sales_organizations.sales_org_name,
      sales_orders.total_sales_order_org_currency, sales_orders.total_sales_orders]
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
    column_order: ["$$$_row_numbers_$$$", sales_orders.sales_organization, sales_organizations.sales_org_name,
      sales_orders.total_sales_orders, sales_orders.total_sales_order_org_currency]
    show_totals: true
    show_row_totals: true
    series_labels:
      sales_orders.total_sales_order_org_currency: Total Revenue
    series_cell_visualizations:
      sales_orders.total_sales_orders:
        is_active: false
      sales_orders.total_sales_order_org_currency:
        is_active: true
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 22
    col: 0
    width: 16
    height: 7
  - title: Total Sales YoY
    name: Total Sales YoY
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_line
    fields: [sales_orders.total_sales_order_org_currency, sales_orders.order_year,
      sales_orders.order_month_name]
    pivots: [sales_orders.order_year]
    fill_fields: [sales_orders.order_year, sales_orders.order_month_name]
    filters:
      sales_orders.order_date: 2 years
    sorts: [sales_orders.order_year desc, sales_orders.order_month_name]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: sales_orders.total_sales_order_org_currency,
            id: 2021 - sales_orders.total_sales_order_org_currency, name: '2021'},
          {axisId: sales_orders.total_sales_order_org_currency, id: 2020 - sales_orders.total_sales_order_org_currency,
            name: '2020'}, {axisId: sales_orders.total_sales_order_org_currency, id: 2019
              - sales_orders.total_sales_order_org_currency, name: '2019'}, {axisId: sales_orders.total_sales_order_org_currency,
            id: 2018 - sales_orders.total_sales_order_org_currency, name: '2018'},
          {axisId: sales_orders.total_sales_order_org_currency, id: 2017 - sales_orders.total_sales_order_org_currency,
            name: '2017'}, {axisId: sales_orders.total_sales_order_org_currency, id: 2016
              - sales_orders.total_sales_order_org_currency, name: '2016'}, {axisId: sales_orders.total_sales_order_org_currency,
            id: 2015 - sales_orders.total_sales_order_org_currency, name: '2015'},
          {axisId: sales_orders.total_sales_order_org_currency, id: 2014 - sales_orders.total_sales_order_org_currency,
            name: '2014'}, {axisId: sales_orders.total_sales_order_org_currency, id: 2013
              - sales_orders.total_sales_order_org_currency, name: '2013'}, {axisId: sales_orders.total_sales_order_org_currency,
            id: 2012 - sales_orders.total_sales_order_org_currency, name: '2012'},
          {axisId: sales_orders.total_sales_order_org_currency, id: 2011 - sales_orders.total_sales_order_org_currency,
            name: '2011'}, {axisId: sales_orders.total_sales_order_org_currency, id: 2010
              - sales_orders.total_sales_order_org_currency, name: '2010'}, {axisId: sales_orders.total_sales_order_org_currency,
            id: 2009 - sales_orders.total_sales_order_org_currency, name: '2009'},
          {axisId: sales_orders.total_sales_order_org_currency, id: 2008 - sales_orders.total_sales_order_org_currency,
            name: '2008'}, {axisId: sales_orders.total_sales_order_org_currency, id: 2007
              - sales_orders.total_sales_order_org_currency, name: '2007'}, {axisId: sales_orders.total_sales_order_org_currency,
            id: 2006 - sales_orders.total_sales_order_org_currency, name: '2006'},
          {axisId: sales_orders.total_sales_order_org_currency, id: 2005 - sales_orders.total_sales_order_org_currency,
            name: '2005'}, {axisId: sales_orders.total_sales_order_org_currency, id: 2004
              - sales_orders.total_sales_order_org_currency, name: '2004'}, {axisId: sales_orders.total_sales_order_org_currency,
            id: 2003 - sales_orders.total_sales_order_org_currency, name: '2003'},
          {axisId: sales_orders.total_sales_order_org_currency, id: 2002 - sales_orders.total_sales_order_org_currency,
            name: '2002'}, {axisId: sales_orders.total_sales_order_org_currency, id: 2001
              - sales_orders.total_sales_order_org_currency, name: '2001'}, {axisId: sales_orders.total_sales_order_org_currency,
            id: 2000 - sales_orders.total_sales_order_org_currency, name: '2000'},
          {axisId: sales_orders.total_sales_order_org_currency, id: 1999 - sales_orders.total_sales_order_org_currency,
            name: '1999'}, {axisId: sales_orders.total_sales_order_org_currency, id: 1998
              - sales_orders.total_sales_order_org_currency, name: '1998'}, {axisId: sales_orders.total_sales_order_org_currency,
            id: 1997 - sales_orders.total_sales_order_org_currency, name: '1997'},
          {axisId: sales_orders.total_sales_order_org_currency, id: 1996 - sales_orders.total_sales_order_org_currency,
            name: '1996'}, {axisId: sales_orders.total_sales_order_org_currency, id: 1995
              - sales_orders.total_sales_order_org_currency, name: '1995'}, {axisId: sales_orders.total_sales_order_org_currency,
            id: 1994 - sales_orders.total_sales_order_org_currency, name: '1994'},
          {axisId: sales_orders.total_sales_order_org_currency, id: sales_orders.document_year___null
              - sales_orders.total_sales_order_org_currency, name: "∅"}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    defaults_version: 1
    hidden_fields: []
    listen:
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 6
    col: 16
    width: 8
    height: 7
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
  - title: Customers by Location
    name: Customers by Location
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_map
    fields: [customers_md.count, countries_t005_customer.country_name]
    sorts: [customers_md.count desc]
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
    reverse_map_value_colors: true
    map_value_colors: ["#0307fc", "#035efc", "#03b6fc"]
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
    hidden_fields: []
    y_axes: []
    listen:
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 15
    col: 16
    width: 8
    height: 7
  - title: High Value Customers (Top 25)
    name: High Value Customers (Top 25)
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_grid
    fields: [customers_md.customer_number, customers_md.customer_name, sales_orders.total_sales_order_org_currency,
      sales_orders.total_sales_orders]
    filters:
      customers_md.customer_number: "-NULL"
    sorts: [sales_orders.total_sales_order_org_currency desc]
    limit: 25
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
    column_order: ["$$$_row_numbers_$$$", customers_md.customer_number, customers_md.customer_name,
      sales_orders.total_sales_orders, sales_orders.total_sales_order_org_currency]
    show_totals: true
    show_row_totals: true
    series_labels:
      sales_orders.total_sales_order_org_currency: Total Sales Revenue
    series_cell_visualizations:
      sales_orders.total_sales_order_org_currency:
        is_active: true
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
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 15
    col: 0
    width: 16
    height: 7
  - title: Deliveries by Location
    name: Deliveries by Location
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_map
    fields: [sales_orders.total_sales_orders, countries_t005_delivery.country_name]
    sorts: [sales_orders.total_sales_orders desc]
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
    reverse_map_value_colors: true
    map_value_colors: ["#0307fc", "#035efc", "#03b6fc"]
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
    hidden_fields: []
    y_axes: []
    listen:
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 22
    col: 16
    width: 8
    height: 7
  - title: Total Sales
    name: Total Sales
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
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 4
    col: 14
    width: 5
    height: 2
  - title: Delivery Returns
    name: Delivery Returns
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
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 4
    col: 19
    width: 5
    height: 2
  - title: Product Performance (Top 5)
    name: Product Performance (Top 5)
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_column
    fields: [material_md.material_text, uom_md.unit_of_measurement_text_maximum10_characters,
      sales_orders.total_sales_order_org_currency, sales_orders.total_cumulative_order_quantity]
    sorts: [sales_orders.total_sales_order_org_currency desc]
    limit: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: sales_orders.total_sales_order_org_currency,
            id: sales_orders.total_sales_order_org_currency, name: Total Sales Order
              Org Currency}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: sales_orders.total_cumulative_order_quantity,
            id: sales_orders.total_cumulative_order_quantity, name: Total Cumulative
              Order Quantity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      sales_orders.total_cumulative_order_quantity: "#FBBC04"
    series_labels:
      sales_orders.total_sales_order_org_currency: Total Revenue
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
    defaults_version: 1
    hidden_fields: []
    series_column_widths:
      sales_orders.total_cumulative_order_quantity: 135
    listen:
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 31
    col: 0
    width: 12
    height: 9
  - title: Product Return Rate (Top 5)
    name: Product Return Rate (Top 5)
    model: cortex_data_foundation
    explore: sales_orders
    type: looker_column
    fields: [material_md.material_text, uom_md.unit_of_measurement_text_maximum10_characters,
      deliveries.delivery_return_percentage]
    sorts: [deliveries.delivery_return_percentage desc]
    limit: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: sales_orders.total_sales_order_org_currency,
            id: sales_orders.total_sales_order_org_currency, name: Total Sales Order
              Org Currency}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: sales_orders.total_cumulative_order_quantity,
            id: sales_orders.total_cumulative_order_quantity, name: Total Cumulative
              Order Quantity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      sales_orders.total_cumulative_order_quantity: "#FBBC04"
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
    defaults_version: 1
    hidden_fields: []
    series_column_widths:
      sales_orders.total_cumulative_order_quantity: 135
    listen:
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 31
    col: 12
    width: 12
    height: 9
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
      Document Date: sales_orders.order_date
      Customer Name: customers_md.customer_name
      Sales Organization Name: sales_organizations.sales_org_name
      Product Description: material_md.material_text
      Product Category: product_hierarchy_md.product_category
    row: 42
    col: 0
    width: 24
    height: 11
  filters:
  - name: Document Date
    title: Document Date
    type: field_filter
    default_value: 2 year
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cortex_data_foundation
    explore: sales_orders
    listens_to_filters: []
    field: sales_orders.order_date
  - name: Customer Name
    title: Customer Name
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
    field: customers_md.customer_name
  - name: Sales Organization Name
    title: Sales Organization Name
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
    field: sales_organizations.sales_org_name
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
