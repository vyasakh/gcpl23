project_name: "0_vysakh_thelook"

localization_settings: {
  default_locale: en
  localization_level: permissive
}


constant: html_menu_right_click_icon {
  value: "
  <a href='#drillmenu'>
  {% if _user_attributes['locale'] == 'en' %}
  <img src='https://storage.googleapis.com/t1-eufkt-storage-prod-looker/img/Menu%20FR.png' style='max-width: 100%;'>
  {% else %}
  <img src='https://storage.googleapis.com/t1-eufkt-storage-prod-looker/img/Menu%20EN.png' style='max-width: 100%;'>
  {% endif %}
  </a>}
  "
}





constant:url_ms_custom_back_of_pack {
  value: "Created+Date={{ _filters['orders.created_date'] | url_encode }}&Status={{_filters['orders.status'] | url_encode}}
"}
