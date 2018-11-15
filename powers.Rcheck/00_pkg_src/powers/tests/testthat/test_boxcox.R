context("BoxCox Transformation check")

test_that("At least numeric values work.", {
    x <- 1:10
    p <- 0
    expect_equal(bctrans(x,p), log(x))

})


test_that("At least logical values work.", {
    x <- c(TRUE, FALSE)
    p <- 2
    expect_identical(bctrans(x,p), c(0,(-1/p)))

})
