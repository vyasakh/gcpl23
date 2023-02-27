view: orders {
  sql_table_name: looker_test.orders ;;
  drill_fields: [id]
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

  dimension: order_amount {
    label: "amount"
    type: number
    sql: ${TABLE}.order_amount ;;
  }

  dimension: status {
    label: "order_status"
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

 measure: video {

    type: string

    sql: 'https://www.kapwing.com/videos/63f5f9c8eaa5dc001728f197' ;;

    html: <video width="290" height="130" controls preload="none"> <controls> <source src="{{ value }}" type="video/mp4"> </video> ;;

  }

  measure: looker_image {
    type: string
    sql: 'https://www.linkpicture.com/q/ezgif.com-video-to-gif_1.gif';;
    html: <img src="https://www.linkpicture.com/q/ezgif.com-video-to-gif_1.gif" /> ;;
  }
}
