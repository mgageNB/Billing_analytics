view: mgage_us_billing_consolidated_grid_view {
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
            ,IS_INTERNATIONAL ISINTERNATIONAL
            ,CARRIER_NAME CARRIER
            ,SHORT_CODE SHORTCODE
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

  dimension: carrier {
    type: string
    sql: ${TABLE}.CARRIER ;;
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

  dimension: delivery_protocol {
    type: string
    sql: ${TABLE}.DELIVERY_PROTOCOL ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.GATEWAY ;;
  }

  dimension: ISINTERNATIONAL {
    type: string
    sql: ${TABLE}.ISINTERNATIONAL ;;
  }

  dimension: DIRECTION {
    type: string
    sql: ${TABLE}.DIRECTION ;;
  }

  dimension: CUSTOMER_ID {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: PARENT_ID {
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

  dimension: SHORTCODE {
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

}
