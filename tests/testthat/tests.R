dataset <- "DUR_D"

test_that("get_data_structure returns a list of data frame with positive length",
          {
            skip_on_cran()
            Sys.sleep(10)
            dstruc <- get_data_structure(dataset)
            
            expect_equal(class(dstruc), "list")
            expect_true(length(dstruc) > 0)
            expect_true(all(lapply(dstruc, class) == "data.frame"))
          })

test_that("get_dataset returns a data frame with positive length", {
  skip_on_cran()
  Sys.sleep(10)
  filter_list <- list(c("DEU", "FRA"), "MW", "2024")
  df <- get_dataset(dataset = dataset, filter = filter_list)
  
  expect_equal(class(df), c("tbl_df", "tbl", "data.frame"))
  expect_true(nrow(df) > 0)
})



# test_that("test_data_structure", {
#   datasets <- c("GOV_DEBT",
#                 "DUR_D",
#                 "AIR_EMISSIONS",
#                 "TEL",
#                 "FUA_CITY")
#   
#   test_data_structure <- function(dataset) {
#     new <- get_data_structure(dataset)
#     
#     # From version 0.2.4
#     ref <- get_data_structure(dataset)
#     
#     new$VAR_DESC <- new$VAR_DESC |> dplyr::arrange(id)
#     ref$VAR_DESC <- ref$VAR_DESC |> dplyr::arrange(id)
#     
#     testthat::expect_identical(new, ref)
#   }
#   
#   
#   
#   for (ds in datasets) {
#     test_data_structure(ds)
#   }
# }