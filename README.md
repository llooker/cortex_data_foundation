<h1><center><span style="color:#2d7eea">Google Cloud Cortex Framework for SAP<br><br>

- Data Foundation -</span></center></h1><br>

<h2><span style="color:#2d7eea">What does this Looker Block do for me?</span></h2>

**(1) Sales Analytics Dashboard** - Monitor sales and delivery performance and highlight customers and products that need attention to improve business performance.

**(2) Orders Fulfillment Dashboard** - Monitor current delivery status, highlight late deliveries and compare pending deliveries with current stock.

**(3) Product Snapshot Dashboard** - Review performance and availability of a specific product.

**(4) Customer Snapshot Dashboard** - Find all the information about your customer in one place.

**(5) Order Snapshot Dashboard** - Find all the information about your order in one place.

**(6) Sales Order Explore** - Explore your data, ask new questions and create/save new reports and dashboards based on your specific requirements.
<br>

<h2><span style="color:#2d7eea">Required Customizations</span></h2>


* **Connection**: In the `manifest.lkml` file, update the value of the `CONNECTION_NAME` constant.

* **Dataset/Schema**: In the `manifest.lkml` file, if you are not using the default `SAP_REPORTING` dataset, please update the value of the `DATASET` constant.

* **User Attribute**: Create a user attribute called ``sap_client_mandt`` to controls which SAP Client(s) (MANDT) data each user is able to access.

* **(Optional) Unhide additional dimensions and measure**: Most dimensions and measures have been hidden to simplify reporting and data understanding. However should you find anything valuable missing, simply update the `hidden` parameters to `No` in the relevant views.

* **(Optional) Language**: The SAP language (SPRAS) is tied to the Locale of the Looker user by default. This can be modified in the `cortex_data_foundation.model` file by updating the join for the `language_map` view.


<h2><span style="color:#2d7eea">Additional Resources</span></h2>

To learn more about LookML and how to develop visit <a href="https://connect.looker.com/" target="_blank">Looker Connect</a> and <a href="https://help.looker.com/" target="_blank">Looker Help Center</a>


To learn more about the Google Cloud Cortex Framework for SAP, visit [our Solution Webpage](https://cloud.google.com/solutions/cortex) or contact us at [cortex-framework@google.com](mailto:cortex-framework@google.com)
<br>

<h2><span style="color:#2d7eea">Notes and Other Known Issues</span></h2>


* **Currencies** - Currently, the currency conversion is either embedded in the reporting views or not incorporated. Please incorporate and customize the currency conversion according to your business needs. You will find functions and views to add to your LookML model in the SAP_REPORTING dataset by searching for "Currency".
