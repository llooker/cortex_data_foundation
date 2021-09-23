view: custom_navigation_buttons {
  extension: required

  measure: dash_nav {
    hidden: yes
    label: "Navigation Bar"
    type: string
    sql: "";;
    html:
    <div style="background-color: #FFFFFF; height:525px;width:100%"></div>
      <div style="background-color: #FFFFFF; border: solid 1px #4285F4; border-radius: 5px; padding: 5px 10px; height: 60px; width:100%">
        <nav style="font-size: 18px; color: #4285F4">
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards-next/cortex_data_foundation::sales_analytics">Sales Analytics</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards-next/cortex_data_foundation::orders_fulfillment">Orders Fulfillment</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards-next/cortex_data_foundation::product_snapshot">Product Snapshot</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards-next/cortex_data_foundation::customer_snapshot">Customer Snapshot</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards-next/cortex_data_foundation::order_snapshot">Order Snapshot</a>
        </nav>
      </div>
    <div style="background-color: #FFFFFF; height:500px;width:100%"></div>;;
  }
}

# #F6F6F7
