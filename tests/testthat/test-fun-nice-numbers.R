context("test-fun-nice-numbers")

real_number <- 14632.536142356

test_that("thous_sep works", {
  expect_equal(thous_sep(real_number),
               "14'633")
})

test_that("euro_formatters works", {
  expect_equal(euro_formatter(real_number),
               "€ 14'633")
})

