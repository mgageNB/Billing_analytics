view: monthly_billing_analysis {
  sql_table_name: ANALYTICS.MONTHLY_BILLING_ANALYSIS ;;

  dimension: billable {
    type: number
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

  dimension: international {
    type: string
    sql: ${TABLE}.INTERNATIONAL ;;
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

  dimension: shortcode {
    type: string
    sql: ${TABLE}.SHORTCODE ;;
  }

  dimension: sub_customer_id {
    type: string
    sql: ${TABLE}.SUB_CUSTOMER_ID ;;
  }

  dimension: sub_customer_name {
    type: string
    sql: ${TABLE}.SUB_CUSTOMER_NAME ;;
  }

  dimension: success {
    type: number
    sql: ${TABLE}.SUCCESS ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.TOTAL ;;
  }

  measure: count {
    type: count
    drill_fields: [sub_customer_name, campaign_name, country_name, parent_customer_name]
  }
}
