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
    html: <a href="https://gcpl230.cloud.looker.com/dashboards/67?ID=0&Name={{ _filters['orders.created_date'] | url_encode }}"/>
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




  dimension: namess {
    label: "{%if users.id._value != 'No Value~~~-2~~~No Value' %} tests {% endif %}"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: yyyymmdd_at {
    type: number
    sql: ${TABLE}.yyyymmdd_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, orders.count]
  }
}
