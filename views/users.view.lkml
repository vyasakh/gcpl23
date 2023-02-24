view: users {
  sql_table_name: looker_test.users ;;
  drill_fields: [id]
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
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

  dimension: epoch_at {
    type: number
    sql: ${TABLE}.epoch_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

dimension: tenant_id {
  label: "tenant"
  type: string
  sql: ${TABLE}.id;;
  action: {
    label: "{%if users.id._value._value != '1' %}{{ _localization['id'] }}{% endif %}"
    url: "https://www.google.com/"
    param: {
      name:"id"
      value: "{{users.id}}"
    }
    user_attribute_param: {
      user_attribute: email
      name: "ps_email"
    }
    form_param: {
      name: "change_tenant"
      type: string
      label: "tenant"
      description: "Enter valid Tenant Id"
      required: yes
    }
  }}





  dimension: hire{
    type: yesno
    sql: ${created_date} = ${created_month} ;;
  }

  dimension: yyyymmdd_at {
    type: number
    sql: ${TABLE}.yyyymmdd_at ;;
  }



  measure: count {
    type: count
    drill_fields: [id, name]
  }

  measure: h1{
    type: count_distinct
    sql: ${id} ;;
    filters: [hire: "yes"]
    drill_fields: [detail*]
  }

  measure: h2{
    type: count_distinct
    sql: ${id} ;;
    drill_fields: [detail*]
  }
measure: h3{
  type: number
  sql: ${h2} - ${h1} ;;
  drill_fields: [detail*]
}


  measure: sum {
    type: sum
    sql: ${id} ;;
    html: {% if value < 0 %}
          <font style="color: #990000"> ▼ ( {{ rendered_value | times: -1 | round: 0}} ) </font>
         {% elsif value > 0 %}
         <font style="color: #009900"> ▲ {{ rendered_value | round: 0}}  </font>
          {% else %}
          <font style="color: #000000"> {{ rendered_value | round: 0}} </font>
          {% endif %} ;;

  }

  set: detail{
   fields: [id,name]

  }


}
