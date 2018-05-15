view: product_id {
  sql_table_name: dbo.ProductId ;;

  dimension: db_name {
    type: string
    sql: ${TABLE}."D/B Name" ;;
  }

  dimension: listing_color {
    type: string
    sql: ${TABLE}."Listing Color" ;;
  }

  dimension: listing_size {
    type: string
    sql: ${TABLE}."Listing Size" ;;
  }

  dimension: listing_title {
    type: string
    sql: ${TABLE}."Listing Title" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductId ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: series_name {
    type: string
    sql: ${TABLE}."Series Name" ;;
  }

  dimension: ss_sku_code {
    type: string
    sql: ${TABLE}."SS SKU Code" ;;
  }

  dimension: ss_sku_colour {
    type: string
    sql: ${TABLE}."SS SKU Colour" ;;
  }

  dimension: ss_sku_size {
    type: string
    sql: ${TABLE}."SS SKU Size" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, db_name, series_name]
  }

    measure: series_count {
    type: count_distinct
    sql: ${series_name} ;;
    drill_fields: [series_name]
  }
}
