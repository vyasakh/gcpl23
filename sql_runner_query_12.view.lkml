view: sql_runner_query_12 {
  derived_table: {
    sql: SELECT
          "orders"."created_at" AS "orders.created_date",
          "orders"."id" AS "orders.id",
          "orders"."user_id" AS "orders.user_id",
          "users"."id" AS "users.id"
      FROM
          "looker_test"."orders" AS "orders"
          LEFT JOIN "looker_test"."users" AS "users" ON "orders"."user_id" = "users"."id"
       ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: orders_created_date {
    type: time
    sql: ${TABLE}."orders.created_date" ;;
  }

  dimension: orders_id {
    type: number
    sql: ${TABLE}."orders.id" ;;
  }

  dimension: orders_user_id {
    type: number
    sql: ${TABLE}."orders.user_id" ;;
  }

  dimension: users_id {
    type: number
    sql: ${TABLE}."users.id" ;;
  }

  set: detail {
    fields: [orders_created_date_time, orders_id, orders_user_id, users_id]
  }
}
