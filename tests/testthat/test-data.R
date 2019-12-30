library(dplyr)
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
    c("fight_date","location","attendance"))
})

test_that("There's a winner and a loser for every non-draw, non-nc fight", {
  expect_equal(
    ufc_stats %>%
      group_by(id) %>%
      filter(any(winner=='W')) %>%
      ungroup() %>%
      count(),
    ufc_stats %>%
      group_by(id) %>%
      filter(any(winner=='L')) %>%
      ungroup() %>%
      count())
})

test_that("Draws have the same 'winner' value for both fighters", {
  expect_equal(
    ufc_stats %>%
      group_by(id) %>%
      filter(any(winner=='D')) %>%
      ungroup() %>%
      count(),
    ufc_stats %>%
      group_by(id) %>%
      filter(winner=='D') %>%
      ungroup() %>%
      count())
})

test_that("No-Contest fights have the same 'winner' value for both fighters", {
  expect_equal(
    ufc_stats %>%
      group_by(id) %>%
      filter(any(winner=='NC')) %>%
      ungroup() %>%
      count(),
    ufc_stats %>%
      group_by(id) %>%
      filter(winner=='NC') %>%
      ungroup() %>%
      count())
})
