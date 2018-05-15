view: dashboard_input_ssis {
  sql_table_name: dbo.Dashboard_Input_SSIS ;;

  dimension: _of_prod_review {
    type: string
    sql: ${TABLE}."# of Prod Review" ;;
  }

  dimension: availability {
    type: string
    sql: ${TABLE}.Availability ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: cat {
    type: string
    sql: ${TABLE}.Cat ;;
  }

  dimension: ccy {
    type: string
    sql: ${TABLE}.CCY ;;
  }

  dimension: db_name {
    type: string
    sql: ${TABLE}."D/B Name" ;;
  }

  dimension: discount_excluded {
    type: string
    sql: ${TABLE}.DiscountExcluded ;;
  }

  dimension: file_id {
    type: number
    sql: ${TABLE}.FileId ;;
  }

  dimension: fx {
    type: number
    sql: ${TABLE}.FX ;;
  }

  dimension: importexport {
    type: string
    sql: ${TABLE}."Import/Export" ;;
  }

  dimension: include_exclude {
    type: string
    sql: ${TABLE}."Include/ Exclude" ;;
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

  dimension: lp_lc {
    type: number
    sql: ${TABLE}."LP (LC)" ;;
  }

  dimension: lp_usd {
    type: number
    sql: ${TABLE}."LP (USD)" ;;
  }

  dimension: offbundpromo {
    type: string
    sql: ${TABLE}."Off/Bund/Promo" ;;
  }

  dimension: prod_rating {
    type: string
    sql: ${TABLE}."Prod Rating" ;;
  }

  dimension: refurbished {
    type: string
    sql: ${TABLE}.Refurbished ;;
  }

  dimension_group: report {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Report Date" ;;
  }

  dimension: row_id {
    type: number
    sql: ${TABLE}.RowId ;;
  }

  dimension: rrp_lc {
    type: number
    sql: ${TABLE}."RRP (LC)" ;;
  }

  dimension: rrp_usd {
    type: number
    sql: ${TABLE}."RRP (USD)" ;;
  }

  dimension: seller_id {
    type: number
    sql: ${TABLE}.SellerID ;;
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}."Seller Name" ;;
  }

  dimension: seller_size {
    type: string
    sql: ${TABLE}."Seller Size" ;;
  }

  dimension: seller_time {
    type: string
    sql: ${TABLE}."Seller Time" ;;
  }

  dimension: series_name {
    type: string
    sql: ${TABLE}."Series Name" ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.Site ;;
  }

  dimension: site_prod_id {
    type: string
    sql: ${TABLE}."Site Prod ID" ;;
  }

  dimension: site_sku_code {
    type: string
    sql: ${TABLE}."Site SKU Code" ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.SIZE ;;
  }

  dimension: sp_lc {
    type: number
    sql: ${TABLE}."SP (LC)" ;;
  }

  dimension: sp_usd {
    type: number
    sql: ${TABLE}."SP (USD)" ;;
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

  dimension: stocks {
    type: number
    sql: ${TABLE}.Stocks ;;
  }

  dimension: sub {
    type: string
    sql: ${TABLE}.Sub ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: warranty_type {
    type: string
    sql: ${TABLE}."Warranty Type" ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.Week ;;
  }

  measure: count {
    type: count
    drill_fields: [series_name, db_name, seller_name]
  }

measure: total_lp_usd{
  type: sum
  sql: ${lp_usd} ;;
  value_format: "0.000,,\" M\""
  drill_fields: [seller_name, db_name]
}

  measure: total_sp_usd{
    type: sum
    sql: ${sp_usd} ;;
    value_format: "0.00,,\" M\""
    drill_fields: [seller_name, db_name]
  }


  }
