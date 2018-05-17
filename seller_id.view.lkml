view: seller_id {
  sql_table_name: dbo.SellerId ;;

  dimension: seller_id {
    type: number
    sql: ${TABLE}.SellerId ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}.SellerName ;;
  }

  dimension: seller_rating {
    type: number
    sql: ${TABLE}."Seller Rating" ;;
  }

  dimension: seller_rep {
    type: string
    sql: ${TABLE}."Seller Rep" ;;
  }

  dimension: seller_type {
    type: string
    sql: ${TABLE}."Seller type" ;;
  }

  measure: count {
    type: count
    drill_fields: [seller_name]
    link: {
  label: "Product Dashboard"
  url: "/dashboards/5"
  icon_url: "http://www.looker.com/favicon.ico"
}



  }
}
