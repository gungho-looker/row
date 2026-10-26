# The name of this view in Looker is "Grandkpi Monthry"
view: grandkpi_monthry {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `wf_tri_summary.grandkpi_monthry` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Android Arppu" in Explore.

  dimension: android_arppu {
    type: number
    sql: ${TABLE}.android_arppu ;;
  }

  dimension: android_arppu_ex_tax {
    type: number
    sql: ${TABLE}.android_arppu_ex_tax ;;
  }

  dimension: android_cumulative_dl {
    type: number
    sql: ${TABLE}.android_cumulative_dl ;;
  }

  dimension: android_dl {
    type: number
    sql: ${TABLE}.android_dl ;;
  }

  dimension: android_mau {
    type: number
    sql: ${TABLE}.android_mau ;;
  }

  dimension: android_paid_uu {
    type: number
    sql: ${TABLE}.android_paid_uu ;;
  }

  dimension: android_payment_rate {
    type: number
    sql: ${TABLE}.android_payment_rate ;;
  }

  dimension: android_sales {
    type: number
    sql: ${TABLE}.android_sales ;;
  }

  dimension: android_sales_ex_tax {
    type: number
    sql: ${TABLE}.android_sales_ex_tax ;;
  }

  dimension: ios_arppu {
    type: number
    sql: ${TABLE}.ios_arppu ;;
  }

  dimension: ios_arppu_ex_tax {
    type: number
    sql: ${TABLE}.ios_arppu_ex_tax ;;
  }

  dimension: ios_cumulative_dl {
    type: number
    sql: ${TABLE}.ios_cumulative_dl ;;
  }

  dimension: ios_dl {
    type: number
    sql: ${TABLE}.ios_dl ;;
  }

  dimension: ios_mau {
    type: number
    sql: ${TABLE}.ios_mau ;;
  }

  dimension: ios_paid_uu {
    type: number
    sql: ${TABLE}.ios_paid_uu ;;
  }

  dimension: ios_payment_rate {
    type: number
    sql: ${TABLE}.ios_payment_rate ;;
  }

  dimension: ios_sales {
    type: number
    sql: ${TABLE}.ios_sales ;;
  }

  dimension: ios_sales_ex_tax {
    type: number
    sql: ${TABLE}.ios_sales_ex_tax ;;
  }

  dimension: sales_income_70per {
    type: number
    sql: ${TABLE}.sales_income_70per ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.time ;;
  }

  dimension: total_arppu {
    type: number
    sql: ${TABLE}.total_arppu ;;
  }

  dimension: total_arppu_ex_tax {
    type: number
    sql: ${TABLE}.total_arppu_ex_tax ;;
  }

  dimension: total_cumulative_dl {
    type: number
    sql: ${TABLE}.total_cumulative_dl ;;
  }

  dimension: total_dl {
    type: number
    sql: ${TABLE}.total_dl ;;
  }

  dimension: total_mau {
    type: number
    sql: ${TABLE}.total_mau ;;
  }

  dimension: total_paid_uu {
    type: number
    sql: ${TABLE}.total_paid_uu ;;
  }

  dimension: total_payment_rate {
    type: number
    sql: ${TABLE}.total_payment_rate ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }

  dimension: total_sales_ex_tax {
    type: number
    sql: ${TABLE}.total_sales_ex_tax ;;
  }
  measure: count {
    type: count
  }
}
