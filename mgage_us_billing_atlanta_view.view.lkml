view: mgage_us_billing_atlanta_view {
  sql_table_name: ATLANTA.ATLANTA_BILLING_VIEW ;;

  measure: billable {
    type: sum
    sql: ${TABLE}.BILLABLE ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.CARRIER ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: delivery_protocol {
    type: string
    sql: ${TABLE}.DELIVERY_PROTOCOL ;;
  }

  dimension: direction {
    type: string
    sql: ${TABLE}.DIRECTION ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.GATEWAY ;;
  }

  dimension: isinternational {
    type: string
    sql: ${TABLE}.ISINTERNATIONAL ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension: parent_name {
    type: string
    sql: ${TABLE}.PARENT_NAME ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.PERIOD ;;
  }

  dimension: shortcode {
    type: string
    sql: ${TABLE}.SHORTCODE ;;
  }

  measure: success {
    type: sum
    sql: ${TABLE}.SUCCESS ;;
  }

  measure: total {
    type: sum
    sql: ${TABLE}.TOTAL ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name, campaign_name, country_name, parent_name]
  }
}
