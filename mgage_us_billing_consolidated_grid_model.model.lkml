connection: "mgage_us_billing"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project
explore: mgage_us_billing_consolidated_grid_view {}
