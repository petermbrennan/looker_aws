connection: "aws_optimizer"

# include all the views

include: "/aws_costs/*.view.lkml"

datagroup: aws_cost_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_cost_test_default_datagroup
