view: mgage_us_billing_boston_view {
  sql_table_name: BOSTON.BOSTON_BILLING_VIEW ;;

  measure: billable {
    type: sum
    sql: ${TABLE}.BILLABLE ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: carrier_name {
    type: string
    sql: ${TABLE}.CARRIER_NAME ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: delivery_protocol_type {
    type: string
    sql: ${TABLE}.DELIVERY_PROTOCOL_TYPE ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.GATEWAY ;;
  }

  dimension: is_international {
    type: string
    sql: ${TABLE}.IS_INTERNATIONAL ;;
  }

  dimension: message_direction {
    type: string
    sql: ${TABLE}.MESSAGE_DIRECTION ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.ORGANIZATION_ID ;;
  }

  dimension: parent_customer_id {
    type: string
    sql: ${TABLE}.PARENT_CUSTOMER_ID ;;
  }

  dimension: parent_customer_name {
    type: string
    sql: ${TABLE}.PARENT_CUSTOMER_NAME ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.PERIOD ;;
  }

  dimension: short_code {
    type: string
    sql: ${TABLE}.SHORT_CODE ;;
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
    drill_fields: [customer_name, campaign_name, carrier_name, parent_customer_name]
  }
}
