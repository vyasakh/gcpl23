- dashboard: new_dashboard
  title: new_dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: jHUlTfOyzUMq0PZUwzQbxG
  elements:
  - title: new_dashboard
    name: new_dashboard
    model: agustin_thelook
    explore: order_items
    type: table
    fields: [users.gender, users.first_name, users.count, inventory_items.count, order_items.count,
      orders.count, users.average_age]
    filters: {}
    sorts: [users.gender, users.first_name desc]
    subtotals: [users.gender]
    limit: 5000
    dynamic_fields: [{category: table_calculation, expression: "${inventory_items.count}/100",
        label: New Calculation 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: new_calculation_1, _type_hint: number},
      {category: table_calculation, expression: "${users.average_age}/100", label: New
          Calculation 3, value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        table_calculation: new_calculation_3, _type_hint: number}, {category: table_calculation,
        expression: "${users.average_age}/100", label: New Calculation 2, value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, table_calculation: new_calculation_2,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Gender: users.gender
    row: 0
    col: 0
    width: 24
    height: 9
  filters:
  - name: Gender
    title: Gender
    type: field_filter
    default_value: f,m,male
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options:
      - f
      - m
    model: agustin_thelook
    explore: order_items
    listens_to_filters: []
    field: users.gender
