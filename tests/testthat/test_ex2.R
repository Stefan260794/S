context("Test Assignment Exercise 2a")
test_that("Test 2a", {
  df = get_avg_distance_by_model()
  expect_class(df, "tbl_df")
  expect_equal(colnames(df), c("model", "n", "distance"))
  expect_true(df[1, "n"] == 71)
  expect_true(df[1, "model"] == "A330-243")
  expect_true(df[1, "distance"] == 4983)
})

test_that("Test 2a", {
  df = get_avg_distance_by_model()
  expect_class(df, "tbl_df")
  expect_equal(colnames(df), c("model", "n", "distance"))
  expect_true(df[5, "n"] == 1265)
  expect_true(df[5, "model"] == "737-924ER")
  expect_true(round(df[5, "distance"]) == 1694)
})


context("Test Assignment Exercise 2b")
test_that("Test 2b", {
  df = get_avg_distance_by_type()
  expect_equal(colnames(df), c("manufacturer", "type", "n", "distance"))
  expect_class(df, "tbl_df")
  expect_true(df[1, 1] == "AIRBUS")
  expect_true(df[4, 2] == "A321")
})
