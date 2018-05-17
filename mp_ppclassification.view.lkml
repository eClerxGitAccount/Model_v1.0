view: mp_ppclassification {
  sql_table_name: dbo.MP_PPClassification ;;

  dimension: seller_id {
    type: number
    sql: ${TABLE}.SellerId ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}."Seller Name" ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.Site ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count_distinct
    sql: ${seller_id} ;;
    drill_fields: [seller_name, site]
  }


}
