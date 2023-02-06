- dashboard: box_plot
  title: box plot
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: FuormRCKg082nXFkzRPAoW
  elements:
  - title: box plot
    name: box plot
    model: 0_vysakh_thelook
    explore: order_items
    type: looker_boxplot
    fields: [orders.status, order_items.count, orders.count, users.count]
    sorts: [order_items.count desc 0]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
