connection: "athena"

# include all the views
include: "/views/**/*.view"
include: "/look_ml_dashboard.dashboard.lookml"

datagroup: 0_vysakh_thelook_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: 0_vysakh_thelook_default_datagroup

explore: all_types {}
explore: order_items_1 {
  from: order_items
}

explore: order_items {

}
explore: templeted_filter{}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {



}
