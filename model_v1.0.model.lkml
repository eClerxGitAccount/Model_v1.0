connection: "trial_connection"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: model_v1_0_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: model_v1_0_default_datagroup


explore: dashboard_input_ssis {
  join:seller_id {
    sql_on: ${dashboard_input_ssis.seller_id} = ${seller_id.seller_id} ;;
    relationship: many_to_one
  }
  join:mp_ppclassification {
    sql_on: ${dashboard_input_ssis.seller_id} = ${mp_ppclassification.seller_id} ;;
    relationship: many_to_one
  }
  }

explore: product_id {}

explore: seller_id {}


explore: site_id {}
