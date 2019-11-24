context("data regression tests")
options(tibble.print_min = 20)
# load ufc data
data("ufc_stats")

test_that("Duplicate rows", {
  expect_equal(
    nrow(ufc_stats[duplicated(ufc_stats), ]),
    0)
})

test_that("No missing values (except event level cols)", {
  expect_equal(
    names(ufc_stats)[colSums(is.na(ufc_stats)) > 0],
    c("Date","Location","Attendance"))
})
