context("Test Assignment Exercise 1a")
test_that("Test 1a", {
  df = get_planes_by_seats(min_seats = 50, max_seats = 60) %>% arrange(tailnum)
  expect_class(df, "tbl_df")
  expect_equal(colnames(df), c("tailnum", "model"))
  expect_true(df[1, 1] == "N10156")
})

test_that("Test 1a II", {
  df = get_planes_by_seats() %>% arrange(tailnum)
  expect_class(df, "tbl_df")
  expect_equal(colnames(df), c("tailnum", "model"))
  expect_equal(df[1, 2, drop = TRUE], "777-222")
})

context("Test Assignment Exercise 1b")
test_that("Test 1b", {
  out = plane_model_by_seats(min_seats = 50, max_seats = 60)
  expect_class(out, "character")
  expect_true(out[1] == "EMB-145XR")
})

test_that("Test 1b II", {
  out = plane_model_by_seats()
  expect_class(out, "character")
  expect_true(out[2] == "777-200")
})

