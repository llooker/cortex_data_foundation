project_name: "cortex_data_foundation"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

constant: CONNECTION_NAME {
  value: "lucias-sap-bq"
  export: override_required
}

constant: DATASET {
  value: "SAP_REPORTING"
  export: override_required
}

# constant: LANGUAGE {
#   value: "{{ _user_attributes['locale'] }}"
# }

# constant: BigNumbers_format {
#   value: "
#   {% if value < 0 %}
#   {% assign abs_value = value | times: -1.0 %}
#   {% assign pos_neg = '-' %}
#   {% else %}
#   {% assign abs_value = value | times: 1.0 %}
#   {% assign pos_neg = '' %}
#   {% endif %}

#   {% if abs_value >=1000000000 %}
#   {{pos_neg}}{{ abs_value | divided_by: 1000000000.0 | round: 2 }}B
#   {% elsif abs_value >=1000000 %}
#   {{pos_neg}}{{ abs_value | divided_by: 1000000.0 | round: 2 }}M
#   {% elsif abs_value >=1000 %}
#   {{pos_neg}}{{ abs_value | divided_by: 1000.0 | round: 2 }}K
#   {% else %}
#   {{pos_neg}}{{ abs_value }}
#   {% endif %}
#   "
# }
