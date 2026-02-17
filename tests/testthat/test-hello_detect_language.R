test_that("correct languages are detected", {
  expect_equal(hello_detect_language("hello"), "English")
  expect_equal(hello_detect_language("hi"), "English")
  expect_equal(hello_detect_language("hey"), "English")
  expect_equal(hello_detect_language("bonjour"), "French")
  expect_equal(hello_detect_language("salut"), "French")
  expect_equal(hello_detect_language("hola"), "Spanish")
  expect_equal(hello_detect_language("hallo"), "German")
  expect_equal(hello_detect_language("guten tag"), "German")
  expect_equal(hello_detect_language("ciao"), "Italian")
})

test_that("unknown greeting returns 'Unknown'", {
  expect_equal(hello_detect_language("hej"), "Unknown")
})

test_that("non-character input throws error", {
    expect_error(hello_detect_language(123),
    regexp = "Greeting must be a character"
  )
})

test_that("empty string returns Unknown", {
  expect_equal(hello_detect_language(""), "Unknown")
})

test_that("multiple greeting input throws error", {
  expect_error(hello_detect_language(c('hello', 'salut')),
  regexp = "Greeting must be a single character string.")
})

