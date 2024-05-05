# Created by use_targets().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline

# Load packages required to define the pipeline:

source('R/libraries.R')

# library(tarchetypes) # Load other packages as needed.

# Set target options:
tar_option_set(
  packages = c("tibble") 

)

# Run the R scripts in the R/ folder with your custom functions:
tar_source(c(
  'R/test.R',
  'R/test2.R',
  'R/rUtils/dataCapture/apis.R'
))
# tar_source("other_functions.R") # Source other scripts as needed.

# Replace the target list below with your own:
list(
  tar_target(
    name = test,
    command = test_function_one()
    # format = "qs" # Efficient storage for general data objects.
  ),
  tar_target(
    name = test2,
    command = test_function_two()
  ),
  
  tarchetypes::tar_quarto(
    name = render_test,
    path = 'index.qmd'
  )
)
