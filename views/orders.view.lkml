view: orders {
  sql_table_name: looker_test.orders ;;
  #drill_fields: [id]
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: search_created {
    type: time
    timeframes: [raw, time, hour, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: search_for_local_time {
    type: time

    timeframes: [raw, time, hour, date, week, month]
    sql: ${TABLE}.created_at ;;
    }

  measure: navigation {
    type: sum
    sql: 1;;
    html:@{html_menu_right_click_icon};;
    link: {
      label: "status count"
      url: "/dashboards/9"
    }
    link: {
      label: "user count status"
      url: "/dashboards/10"
    }

    link: {
      label: "Brand count"
      url: "/dashboards/11"
    }
    link: {
      label: "HFSS"
      url: "/dashboards/11?"
    }
  }




  dimension:amount {
    type: number
    sql: ${TABLE}.order_amount ;;
  }


  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.name, order_items.count]
  }
}
