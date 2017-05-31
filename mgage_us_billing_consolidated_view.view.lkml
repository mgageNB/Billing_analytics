view: mgage_us_billing_consolidated_view {
  derived_table: {

    sql:
      SELECT GATEWAY
            , PERIOD
            , PARENT_ID
            , CUSTOMER_NAME
            , CUSTOMER_ID
            , CAMPAIGN_NAME
            , ISINTERNATIONAL
            , CARRIER
            , SHORTCODE
            , DIRECTION
            , DELIVERY_PROTOCOL
            , TOTAL
            , BILLABLE
            , SUCCESS
            , COUNTRY_CODE
            , COUNTRY_NAME COUNTRY
            , PARENT_NAME
      FROM BILLING.ATLANTA.ATLANTA_BILLING_VIEW
      UNION ALL
      SELECT GATEWAY
            ,PERIOD
            ,PARENT_CUSTOMER_ID PARENT_ID
            ,CUSTOMER_NAME
            ,ORGANIZATION_ID CUSTOMER_ID
            ,CAMPAIGN_NAME
            ,IS_INTERNATIONAL
            ,CARRIER_NAME CARRIER
            ,SHORT_CODE
            ,MESSAGE_DIRECTION DIRECTION
            ,DELIVERY_PROTOCOL_TYPE DELIVERY_PROTOCOL
            ,TOTAL
            ,BILLABLE
            ,SUCCESS
            ,COUNTRY_CODE
            ,COUNTRY
            ,PARENT_CUSTOMER_NAME PARENT_NAME
      FROM BILLING.BOSTON.BOSTON_BILLING_VIEW;;
  }

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

}
