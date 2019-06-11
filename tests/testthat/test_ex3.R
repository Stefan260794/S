context("Test Assignment Exercise 3a")
test_that("Test 3a", {
  skip_if_not(exists("repair_manufacturer"))
  df = repair_manufacturer(planes)
  expect_class(df, "tbl_df")
  expect_equal(colnames(df), colnames(planes))
  expect_equal(nrow(df), 3322)
  expect_equal(ncol(df), 9)
  expect_class(df$manufacturer, "factor")
  expect_true(length(levels(df$manufacturer)) == 3L)
})



context("Test Assignment Exercise 3b")
test_that("Test 3b", {
  skip_if_not(exists("plot_seats_histogram"))
  p = plot_seats_histogram(planes)
  expect_class(p, "ggplot")
})
