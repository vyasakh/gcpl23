view: templeted_filter {
  derived_table: {
    sql: SELECT
          "id" AS "orders.id",
          COUNT(*) AS "orders.count"
      FROM
          "looker_test"."orders" AS "orders"
      GROUP BY
          1

          where
          {% condition date_filter %} orders.created {% endcondition %}
       ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }
  filter: date_filter {
    type: date_time
  }

  dimension: orders_id {
    type: number
    sql: ${TABLE}."orders.id" ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders.count" ;;
  }

  set: detail {
    fields: [orders_id, orders_count]
  }
}
