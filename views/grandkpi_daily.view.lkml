# The name of this view in Looker is "Grandkpi Daily"
view: grandkpi_daily {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `wf_tri_summary.grandkpi_daily` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Arppu" in Explore.

  dimension: arppu {
    type: number
    sql: ${TABLE}.arppu ;;
  }

  dimension: arppu_ex_tax {
    type: number
    sql: ${TABLE}.arppu_ex_tax ;;
  }

  dimension: dau {
    type: number
    sql: ${TABLE}.dau ;;
  }

  dimension: device {
    type: number
    sql: ${TABLE}.device ;;
  }

  dimension: dl {
    type: number
    sql: ${TABLE}.dl ;;
  }

  dimension: new_uu {
    type: number
    sql: ${TABLE}.new_uu ;;
  }

  dimension: paid_uu {
    type: number
    sql: ${TABLE}.paid_uu ;;
  }

  dimension: payment_rate {
    type: number
    sql: ${TABLE}.payment_rate ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: sales_ex_tax {
    type: number
    sql: ${TABLE}.sales_ex_tax ;;
  }

  dimension: sum_sales {
    type: number
    sql: ${TABLE}.sum_sales ;;
  }

  dimension: sum_sales_ex_tax {
    type: number
    sql: ${TABLE}.sum_sales_ex_tax ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.time ;;
  }

  dimension: total_dau {
    type: number
    sql: ${TABLE}.total_dau ;;
  }
  measure: count {
    type: count
  }
}
